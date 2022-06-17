import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:provider/provider.dart';

class ChoiceView extends StatefulWidget {
  const ChoiceView({Key? key}) : super(key: key);

  @override
  State<ChoiceView> createState() => _ChoiceViewState();
}

class _ChoiceViewState extends State<ChoiceView> {
  @override
  Widget build(BuildContext context) {
    LoginChoiceState state = Provider.of<LoginChoiceState>(context);
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: TextButton(
                  onPressed: () {
                    state.changeScreenLog();
                  },
                  style: TextButton.styleFrom(
                      fixedSize: const Size(124, 24),
                      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                      alignment: Alignment.center),
                  child: const Text(
                    'Вход',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  state.changeScreenReg();
                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                    alignment: Alignment.center),
                child: const Text(
                  'Регистрация',
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(
                width: constraints.maxWidth / 2,
                height: 5,
                child: Container(
                  color: const Color.fromRGBO(53, 170, 255, 1),
                ));
          }),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 0,
            color: Color.fromRGBO(53, 170, 255, 1),
          )
        ],
      ),
    );
  }
}
