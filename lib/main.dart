import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pets_project/login_screen/api/login_network.dart';
import 'package:pets_project/login_screen/view/auth_view.dart';

void main() {
  GetIt.instance.registerSingleton<NetworkService>(NetworkService());
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
      home: const AuthView(),
    );
  }
}
