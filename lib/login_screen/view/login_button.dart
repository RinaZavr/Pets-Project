import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_project/login_screen/consts/auth_errors.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'package:pets_project/login_screen/state/login_state.dart';
import 'package:pets_project/login_screen/view/auth_error.dart';
import 'package:pets_project/login_screen/view/temp_auth_error.dart';
import 'package:provider/provider.dart';

import 'package:pets_project/login_screen/consts/login_colors.dart';
import 'package:pets_project/login_screen/consts/login_fonts.dart';

class ButtonView extends StatelessWidget {
  final String _nameButton;
  final Function(Choice) submit;

  const ButtonView(this._nameButton, this.submit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    LoginChoiceState state = Provider.of<LoginChoiceState>(context);
    LoginState stateMain = Provider.of<LoginState>(context);

    return TextButton.icon(
      onPressed: () {
        submit(state.choice);
        // if (stateMain.isErrorData != 200) {
        //   showDialog<String>(
        //       context: context,
        //       builder: (BuildContext context) => stateMain.isErrorData == 404
        //           ? const AuthError(constCode404)
        //           : stateMain.isErrorData == 409
        //               ? const AuthError(constCode409)
        //               : const AuthError(constCodeOther),
        //   );
        // }
      },
      icon: Padding(
        padding: EdgeInsets.only(left: mediaQuery.size.width * 0.08),
        child: SvgPicture.asset("img/paw.svg"),
      ),
      label: Padding(
        padding: EdgeInsets.only(
          right: mediaQuery.size.width * 0.08,
          top: mediaQuery.size.height * 0.02,
          bottom: mediaQuery.size.height * 0.02,
        ),
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
        alignment: Alignment.center,
      ),
    );
  }
}
