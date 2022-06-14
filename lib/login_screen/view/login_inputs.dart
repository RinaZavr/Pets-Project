import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/view/login_button.dart';
import 'package:pets_project/login_screen/view/login_templateInput.dart';
import 'login_forgetpass.dart';
import 'login_last.dart';

class InputsLogView extends StatefulWidget {
  const InputsLogView({Key? key}) : super(key: key);

  @override
  State<InputsLogView> createState() => _InputsLogViewState();
}

class _InputsLogViewState extends State<InputsLogView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        children: const [
          TemplateInput("Email"),
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: TemplateInput("Пароль"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: ButtonView("Войти"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: ForgetPassView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 160),
            child: LastView(),
          )
        ],
      ),
    );
  }
}
