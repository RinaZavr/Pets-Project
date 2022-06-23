import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/state/login_state.dart';
import 'package:pets_project/login_screen/view/login_button.dart';
import 'package:pets_project/login_screen/view/login_templateInput.dart';
import 'package:provider/provider.dart';

class InputsRegView extends StatefulWidget {
  const InputsRegView({Key? key}) : super(key: key);

  @override
  State<InputsRegView> createState() => _InputsRegViewState();
}

class _InputsRegViewState extends State<InputsRegView> {
  @override
  Widget build(BuildContext context) {
    LoginState state = Provider.of<LoginState>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        children: [
          TemplateInput("Имя", state.changeName, state.isErrorName, "Поле не должно быть пустым", state.nameInput),
          TemplateInput("Email", state.changeEmail, state.isErrorEmail, "Неверный формат email. Пример: name@gmail.com", state.emailInput),
          TemplateInput("Пароль", state.changePass, state.isErrorPass, "Поле не должно быть пустым", state.passInput),
          TemplateInput("Повторите пароль", state.repeatPass, state.isErrorRepPass, "Пароли не совпадают", state.repPassInput),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: ButtonView("Зарегистрироваться", state.tryToSubmit),
          ),
        ],
      ),
    );
  }
}
