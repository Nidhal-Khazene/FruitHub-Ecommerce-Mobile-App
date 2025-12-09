import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/database_service.dart';

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
  Future<Map<String, dynamic>> getData({
    required String documentsId,
    required String path,
  }) async {
    var data = await db.collection(path).doc(documentsId).get();
    return data.data()!;
  }
}
