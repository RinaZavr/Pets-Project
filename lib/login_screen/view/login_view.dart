import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:pets_project/login_screen/view/login_logo.dart';
import 'package:pets_project/login_screen/view/login_choice.dart';
import 'package:pets_project/login_screen/view/register_inputs.dart';
import 'package:provider/provider.dart';
import 'login_inputs.dart';
import 'login_last.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const LogoView(),
                Consumer<LoginChoiceState>(
                  builder: (context, value, child) {return
                   Column(
                     children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: ChoiceView(),
                      ),
                      value.choice == Choice.login ? const InputsLogView() : const InputsRegView(),
                     ],
                   );}
                ),
                const LastView()
              ]
            ),
          ),
        ),
      )
    );
  }
}