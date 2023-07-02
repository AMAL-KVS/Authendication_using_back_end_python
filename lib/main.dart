import 'package:flutter/material.dart';
import 'package:mixer_sample/view/login/screen_login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenLogin(),
    );
  }
}
