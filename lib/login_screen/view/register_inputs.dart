import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/view/login_button.dart';
import 'package:pets_project/login_screen/view/login_last.dart';
import 'package:pets_project/login_screen/view/login_templateInput.dart';

class InputsRegView extends StatefulWidget {
  const InputsRegView({Key? key}) : super(key: key);

  @override
  State<InputsRegView> createState() => _InputsRegViewState();
}

class _InputsRegViewState extends State<InputsRegView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        children: const [
          TemplateInput("Имя"),
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: TemplateInput("Email"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: TemplateInput("Пароль"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: TemplateInput("Повторите пароль"),
          ),
          ButtonView("Зарегистрироваться"),
          LastView()
        ],
      ),
    );
  }
}
