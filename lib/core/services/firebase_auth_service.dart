import 'dart:developer';

import 'package:ecommerce_app/core/errors/custom_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}
