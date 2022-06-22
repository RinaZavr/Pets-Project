import 'package:flutter/material.dart';

import '../consts/login_styles.dart';

class LoginErrorText extends StatelessWidget {
  final String errorText;
  final bool isError;

  const LoginErrorText(this.errorText, this.isError, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 16, left: 4),
      child: Text(
        errorText,
        style: isError ? errorTextStyle : invisibleTextStyle,
        textAlign: TextAlign.left,
      ),
    );
  }
}
