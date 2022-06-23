import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:pets_project/login_screen/view/login_view.dart';
import 'package:provider/provider.dart';


class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginChoiceState>(
        create: (context) => LoginChoiceState(), child: const LoginView());
  }
}
