import 'dart:developer';

import 'package:ecommerce_app/core/errors/custom_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception: Firebase.createUserWithEmailAndPassword ${e.toString()} with code: ${e.code}.",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: ".كلمة المرور صعيفة جدا");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هناك حساب يستخدم نفس الإيميل.");
      } else if (e.code == "network-request-failed") {
        throw CustomException(message: "تأكد من إتصالك بالأنترنت.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
      }
    } catch (e) {
      log(
        "Exception: Firebase.createUserWithEmailAndPassword ${e.toString()}.",
      );
      throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception: Firebase.signInWithEmailAndPassword ${e.toString()} with code: ${e.code}.",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: ".كلمة المرور صعيفة جدا");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هناك حساب يستخدم نفس الإيميل.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
      }
    } catch (e) {
      log("Exception: Firebase.signInWithEmailAndPassword ${e.toString()}.");
      throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
    }
  }

  Future<User?> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: <String>['email']);

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return null; // User canceled the sign-in
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user;
  }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential = FacebookAuthProvider.credential(
        result.accessToken!.tokenString,
      );
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    return null;
  }
}
