import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:pets_project/login_screen/view/login_choice.dart';
import 'package:pets_project/login_screen/view/login_inputs.dart';
import 'package:pets_project/login_screen/view/login_last.dart';
import 'package:pets_project/login_screen/view/login_logo.dart';
import 'package:pets_project/login_screen/view/register_inputs.dart';
import 'package:provider/provider.dart';

class LoginMainView extends StatelessWidget {
  const LoginMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const LogoView(),
        Consumer<LoginChoiceState>(
          builder: (context, value, child) {
            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 44),
                  child: ChoiceView(),
                ),
                value.choice == Choice.login
                    ? const InputsLogView()
                    : const InputsRegView(),
              ],
            );
          },
        ),
        const LastView(),
      ],
    );
  }
}
