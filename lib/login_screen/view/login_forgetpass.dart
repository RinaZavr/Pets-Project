import 'package:flutter/material.dart';

import '../consts/login_colors.dart';
import '../consts/login_fonts.dart';
import '../consts/login_strings.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextButton(
        onPressed: () {
          print("nice");
        },
        style: TextButton.styleFrom(
          backgroundColor: constTextButtonBgColor,
          alignment: Alignment.center),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              constForgetButton,
              style: TextStyle(
                fontFamily: constSecondaryButtonFont,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: constTextColor
              ),
            ),
          ]
        )
      ),
    );
  }
}
