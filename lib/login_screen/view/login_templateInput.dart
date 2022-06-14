import 'package:flutter/material.dart';

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
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
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
            hintText: _nameInput,
          ),
          style: const TextStyle(
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}