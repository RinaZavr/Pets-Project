import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoView extends StatelessWidget {
  const LogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 84),
      child: SvgPicture.asset("img/logo.svg"),
    );
  }
}
