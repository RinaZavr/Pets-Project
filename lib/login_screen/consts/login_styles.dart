import 'package:flutter/material.dart';

const Color errorBorderColor = Color.fromRGBO(222, 31, 20, 1);

const Color transparentBorderColor = Colors.transparent;

const TextStyle errorTextStyle = TextStyle(
  color: Color.fromRGBO(216, 24, 82, 1),
  fontWeight: FontWeight.w400,
  fontSize: 12,
);

const TextStyle invisibleTextStyle = TextStyle(
  color: Colors.transparent,
  fontWeight: FontWeight.w400,
  fontSize: 12,
);

const TextStyle errorTextContainerStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 15,
);

const BoxShadow errorShadow = BoxShadow(
  color: Color.fromRGBO(191, 92, 0, 0.4),
  offset: Offset(0, 2),
  blurRadius: 6,
  spreadRadius: 0,
);
