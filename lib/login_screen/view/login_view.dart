import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/view/login_logo.dart';
import 'package:pets_project/login_screen/view/login_choice.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              LogoView(),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: ChoiceView(),
              )
            ]
          ),
        ),
      )
    );
  }
}