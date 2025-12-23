import 'dart:convert';

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonData = SharedPreferencesSingleton.getString(kSaveDataSharedPref);
  UserEntity userEntity = UserModel.fromJson(jsonDecode(jsonData ?? "null"));
  return userEntity;
}
