import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/custom_exceptions.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/core/services/database_service.dart';
import 'package:ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/utils/backend_breakpoint.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl({
    required this.databaseService,
    required this.firebaseAuthService,
  });

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String emailAddress,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        emailAddress: emailAddress,
        password: password,
      );
      var userEntity = UserEntity(
        name: name,
        email: emailAddress,
        userId: user!.uid,
      );
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(message: e.message));
    } catch (e) {
      await deleteUser(user);
      log(
        "Exception: Firebase.createUserWithEmailAndPassword ${e.toString()}.",
      );
      return left(
        ServerFailure(message: 'لقد حدث خطأ ما يرجى المحاولة لاحقا.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      var userCredential = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: emailAddress,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(userCredential.user!));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      log("Exception: Firebase.signInWithEmailAndPassword ${e.toString()}.");
      return left(
        ServerFailure(message: 'لقد حدث خطأ ما يرجى المحاولة لاحقا.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      var userCredential = await firebaseAuthService.signInWithGoogle();
      user = userCredential.user!;
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log("Exception: Firebase.signInWithGoogle ${e.toString()}.");
      return left(
        ServerFailure(message: 'لقد حدث خطأ ما يرجى المحاولة لاحقا.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      var userCredential = await firebaseAuthService.signInWithFacebook();
      user = userCredential!.user!;
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log("Exception: Firebase.signInWithFacebook ${e.toString()}.");
      return left(
        ServerFailure(message: 'لقد حدث خطأ ما يرجى المحاولة لاحقا.'),
      );
    }
  }

  @override
  Future<void> addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendBreakPoint.addUserData,
      data: user.toMap(),
    );
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }
}
