import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/login_colors.dart';
import '../consts/login_fonts.dart';

class ButtonView extends StatelessWidget {
  final String _nameButton;

  const ButtonView(this._nameButton, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return TextButton.icon(
      onPressed: (() {
        print("nice");
      }),
      icon: Padding(
        padding: EdgeInsets.only(left: mediaQuery.size.width * 0.08),
        child: SvgPicture.asset("img/paw.svg"),
      ),
      label: Padding(
        padding: EdgeInsets.only(
          right: mediaQuery.size.width * 0.08,
          top: mediaQuery.size.height * 0.02,
          bottom: mediaQuery.size.height * 0.02),
        child: Text(
          _nameButton,
          style: const TextStyle(
            color: constButtonTextColor,
            fontFamily: constHeaderAndButtonFont,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: constButtonBgColor,
        alignment: Alignment.center
      ),
    );
  }
}
