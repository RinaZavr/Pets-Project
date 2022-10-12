import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  final String _textError;
  const Temp(this._textError, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(_textError),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('X'),
        ),
      ],
    );
  }
}
