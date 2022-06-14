import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LastView extends StatelessWidget {
  const LastView({Key? key}) : super(key: key);

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
          children: [
            const Text('Войти позже',
              style: TextStyle(
                fontFamily: 'Mulish-Italic',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SvgPicture.asset("img/last.svg"),
            )
          ]
        )
      ),
    );
  }
}
