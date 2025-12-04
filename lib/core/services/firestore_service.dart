import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/database_service.dart';

class FilestoreService extends DatabaseService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await db.collection(path).add(data);
  }
}
