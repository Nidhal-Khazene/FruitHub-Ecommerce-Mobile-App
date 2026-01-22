import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/core/services/database_service.dart';

class FirestoreService extends DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    required String? documentId,
  }) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({
    String? documentsId,
    required String path,
    Map<String, dynamic>? query,
  }) async {
    if (documentsId != null) {
      var data = await firestore.collection(path).doc(documentsId).get();
      return data.data();
    } else {
      var data = await firestore.collection(path).get();
      return data.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists({
    required String documentId,
    required String path,
  }) {
    var data = firestore.collection(path).doc(documentId).get();
    return data.then((doc) => doc.exists);
  }
}
