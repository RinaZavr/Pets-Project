import 'package:flutter/material.dart';

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
          backgroundColor: Colors.transparent,
          alignment: Alignment.center),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Забыли пароль?",
              style: TextStyle(
                fontFamily: 'Mulish-Italic',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black
              ),
            ),
          ]
        )
      ),
    );
  }
}
