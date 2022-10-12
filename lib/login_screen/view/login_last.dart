import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:pets_project/login_screen/consts/login_colors.dart';
import 'package:pets_project/login_screen/consts/login_fonts.dart';
import 'package:pets_project/login_screen/consts/login_strings.dart';

class LastView extends StatelessWidget {
  const LastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/list");
        },
        style: TextButton.styleFrom(
          backgroundColor: constTextButtonBgColor,
          alignment: Alignment.center,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              constLastButton,
              style: TextStyle(
                fontFamily: constSecondaryButtonFont,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: constTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SvgPicture.asset("img/last.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
