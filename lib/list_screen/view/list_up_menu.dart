import 'package:flutter/material.dart';

class ListUpMenu extends StatelessWidget {
  const ListUpMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IntrinsicWidth(
      child: TextButton(
        onPressed: null,
        child: Text("Menu"),
      ),
    );
  }
}
