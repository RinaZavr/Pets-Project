import 'package:flutter/material.dart';

import '../consts/login_colors.dart';
import '../consts/login_fonts.dart';

class TemplateInput extends StatelessWidget {
  final String _nameInput;
  const TemplateInput(
    this._nameInput,
    { Key? key }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: constInputBgColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: constInputShadowColor,
            offset: Offset(0, 1),
            blurRadius: 15,
            spreadRadius: 2,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _nameInput
          ),
          style: const TextStyle(
              fontFamily: constTextFont,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: constTextButtonBgColor,
          ),
        ),
      ),
    );
  }
}