import 'dart:core';
import 'package:http/http.dart' as model;

class UserModel {
  final String username;
  final String password;
  final String uid;

  UserModel({
    required this.username,
    required this.password,
    required this.uid,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        password: json['password'],
        uid: json['uid'],
        username: json['username'],
      );

  Map<String, dynamic> tojson() => {
        'password': password,
        'uid': uid,
        'username': username,
      };
}
