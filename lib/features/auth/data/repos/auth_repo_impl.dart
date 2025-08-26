import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/custom_exceptions.dart';
import 'package:ecommerce_app/core/errors/failures.dart';
import 'package:ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String emailAddress,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        emailAddress: emailAddress,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
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
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: emailAddress,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
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
  Future<Either<Failure, UserEntity>> signWithGoogle() async {
    {
      try {
        var user = await firebaseAuthService.signInWithGoogle();
        return right(UserModel.fromFirebaseUser(user!));
      } catch (e) {
        log("Exception: Firebase.signInWithGoogle ${e.toString()}.");
        return left(
          ServerFailure(message: 'لقد حدث خطأ ما يرجى المحاولة لاحقا.'),
        );
      }
    }
  }
}
