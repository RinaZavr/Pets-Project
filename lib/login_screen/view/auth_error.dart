import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/consts/login_colors.dart';
import 'package:pets_project/login_screen/consts/login_styles.dart';

class AuthError extends StatelessWidget {
  final String _textError;

  const AuthError(this._textError, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    // return Scaffold(
    //   backgroundColor: constTextButtonBgColor,
    //   body: 
    return Center(
      child: Container(
          alignment: Alignment.topCenter,
          width: mediaQuery.size.width*0.91,
          height: mediaQuery.size.height*0.07,
          decoration: BoxDecoration(
            border: Border.all(
              color: transparentBorderColor,
              width: 2,
            ),
            color: constErrorBg,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [errorShadow],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _textError,
                  style: errorTextContainerStyle,
                  textAlign: TextAlign.left,
                ),
                CloseButton(
                  color: constButtonTextColor,
                  onPressed: () => Navigator.pushNamed(context, "/auth"),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
