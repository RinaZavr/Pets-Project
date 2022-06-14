import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pets',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginView(),
    );
  }
}