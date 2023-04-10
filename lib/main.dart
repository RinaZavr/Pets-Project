import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pets_project/list_screen/view/list_main_view.dart';
import 'package:pets_project/list_screen/view/profileView/list_profile.dart';
import 'package:pets_project/list_screen/view/profileView/list_profile_edit.dart';
import 'package:pets_project/repositories/user_local_rep.dart';
import 'package:pets_project/services/network_service.dart';
import 'package:pets_project/login_screen/view/auth_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  UserLocalRepositories _rep = UserLocalRepositories();
  await _rep.init();

  GetIt.instance.registerSingleton<NetworkService>(NetworkService()); // использовать один экземпяр класса везде
  GetIt.instance.registerSingleton<UserLocalRepositories>(_rep);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/auth":(context) => const AuthView(),
        "/list":(context) => const AnnouncementListMainView(),
        "/profile":(context) => const ListProfile(),
      },
      home: const AuthView(),
    );
  }
}
