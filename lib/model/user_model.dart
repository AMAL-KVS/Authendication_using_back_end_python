import 'dart:core';
import 'dart:developer';
import 'package:http/http.dart' as http;

class UserModel {
  final String? username;
  final String? password;
  final String? uid;

  UserModel({
    this.username,
    this.password,
    this.uid,
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

  final url = 'http://127.0.0.1:8000/api/form-submission/';

  void submitForm(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print('Form submitted successfully');
      } else {
        print('Form submission failed');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
