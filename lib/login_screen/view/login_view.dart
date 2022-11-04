import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/consts/auth_errors.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:pets_project/login_screen/state/login_state.dart';
import 'package:pets_project/login_screen/view/auth_error.dart';
import 'package:pets_project/login_screen/view/login_inputs.dart';
import 'package:pets_project/login_screen/view/login_last.dart';
import 'package:pets_project/login_screen/view/login_logo.dart';
import 'package:pets_project/login_screen/view/login_choice.dart';
import 'package:pets_project/login_screen/view/login_main_view.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    LoginState state = Provider.of<LoginState>(context);

    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: state.isErrorData != 200? 
              Stack(
                children: <Widget>[
                  const LoginMainView(),
                  state.isErrorData == 404 ? const AuthError(constCode404)
                    : state.isErrorData == 409 ? const AuthError(constCode409)
                      : const AuthError(constCodeOther),
                ],
              )
            : const LoginMainView(),
          ),
        ),
      ),
    );
  }
}