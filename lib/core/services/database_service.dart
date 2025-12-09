import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';

abstract class DatabaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  });
  Future<UserEntity> getUserData({required String uId, required String path});
}
