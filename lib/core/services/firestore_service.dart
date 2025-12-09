import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/database_service.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService extends DatabaseService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await db.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData({
    required String uId,
    required String path,
  }) async {
    var data = await db.collection(path).doc(uId).get();
    return UserModel.fromJson(data.data()!);
  }
}
