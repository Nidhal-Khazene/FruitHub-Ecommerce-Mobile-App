import 'package:ecommerce_app/core/errors/custom_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      if (e.code == 'weak-password') {
        throw CustomException(message: ".كلمة المرور صعيفة جدا");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هناك حساب يستخدم نفس الإيميل.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
      }
    } catch (e) {
      throw CustomException(message: "لقد حدث خطأ ما، يرجي المحاولة لاحقا!");
    }
  }
}
