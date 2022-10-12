import 'package:flutter/material.dart';
import 'package:pets_project/login_screen/consts/login_styles.dart';
import 'package:pets_project/login_screen/view/login_error_text.dart';

class TemplateInput extends StatelessWidget {
  final String _nameInput;
  final Function(String) changeInput;
  final bool isError;
  final String errorText;
  final String controllerInput;

  const TemplateInput(this._nameInput, this.changeInput, this.isError,
      this.errorText, this.controllerInput,
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: isError ? errorBorderColor : transparentBorderColor,
                width: 2,),
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
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, 
                  hintText: _nameInput,),
              style: const TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),),
              onChanged: ((text) => changeInput(text)),
              obscureText:
                  _nameInput == "Пароль" || _nameInput == "Повторите пароль"
                      ? true
                      : false,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              controller: TextEditingController(text: controllerInput),
            ),
          ),
        ),
        LoginErrorText(errorText, isError),
      ],
    );
  }
}
