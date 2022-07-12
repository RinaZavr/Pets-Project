import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:provider/provider.dart';

import '../consts/login_colors.dart';
import '../consts/login_fonts.dart';
import '../consts/login_strings.dart';

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
                  splashColor: constTextButtonBgColor,
                  highlightColor: constTextButtonBgColor,
                ),
                child: TextButton(
                  onPressed: () {
                    state.changeScreenLog();
                  },
                  style: TextButton.styleFrom(
                      fixedSize: const Size(124, 24),
                      backgroundColor: constTextButtonBgColor,
                      alignment: Alignment.center),
                  child: const Text(
                    constLoginHeader,
                    style: TextStyle(
                        fontFamily: constHeaderAndButtonFont,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: constTextColor),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  state.changeScreenReg();
                },
                style: TextButton.styleFrom(
                    backgroundColor: constTextButtonBgColor,
                    alignment: Alignment.center),
                child: const Text(
                  constRegisterHeader,
                  style: TextStyle(
                      fontFamily: constHeaderAndButtonFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: constTextColor),
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
                  color: constDividerColor,
                ));
          }),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 0,
            color: constDividerColor,
          )
        ],
      ),
    );
  }
}
