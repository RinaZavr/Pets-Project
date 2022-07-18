import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/consts/login_strings.dart';
import 'package:pets_project/login_screen/state/login_state.dart';
import 'package:pets_project/login_screen/view/login_button.dart';
import 'package:pets_project/login_screen/view/login_forgetpass.dart';
import 'package:pets_project/login_screen/view/login_templateInput.dart';
import 'package:provider/provider.dart';

class InputsLogView extends StatefulWidget {
  const InputsLogView({Key? key}) : super(key: key);

  @override
  State<InputsLogView> createState() => _InputsLogViewState();
}

class _InputsLogViewState extends State<InputsLogView> {
  @override
  Widget build(BuildContext context) {
    LoginState state = Provider.of<LoginState>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        children: [
          TemplateInput(constEmailInput, state.changeEmail, state.isErrorEmail, constEmailError, state.emailInput),
          TemplateInput(constPassInput, state.changePass, state.isErrorPass, constPassError, state.passInput),
          ButtonView(constLogButton, state.tryToSubmit),
          const ForgetPassView(),
        ],
      ),
    );
  }
}
