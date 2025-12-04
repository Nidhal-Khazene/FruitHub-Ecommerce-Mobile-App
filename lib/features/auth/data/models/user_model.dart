import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.userId});

  factory UserModel.fromFirebaseUser(UserCredential user) {
    return UserModel(
      name: user.user?.displayName ?? "",
      email: user.user?.email ?? "",
      userId: user.user!.uid,
    );
  }
}
