import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/consts/list_styles.dart';
import 'package:pets_project/login_screen/consts/login_styles.dart';
import 'package:pets_project/login_screen/view/login_error_text.dart';

class ProfileNameInput extends StatelessWidget {
  // final Function(String) changeInput;
  final bool isError;
  final String errorText;

  const ProfileNameInput(this.isError,
      this.errorText,
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: isError ? errorBorderColor : transparentBorderColor,
                width: 2,
              ),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  offset: Offset(0, 1),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(13),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none, 
                  hintText: "Имя",
                ),
                style: inputStyle,
                // onChanged: ((text) => changeInput(text)),
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          LoginErrorText(errorText, isError),
        ],
      ),
    );
  }
}
