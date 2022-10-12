import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:pets_project/login_screen/state/login_state.dart';
import 'package:pets_project/login_screen/view/login_view.dart';
import 'package:pets_project/repositories/user_local_rep.dart';
import 'package:pets_project/services/network_service.dart';
import 'package:provider/provider.dart';


class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginChoiceState>(
      create: (context) => LoginChoiceState(), 
      child: ChangeNotifierProvider<LoginState>(
        create: (context)=>LoginState(GetIt.instance.get<NetworkService>(), GetIt.instance.get<UserLocalRepositories>()),  
        child: const LoginView(),
      ),
    );
  }
}
