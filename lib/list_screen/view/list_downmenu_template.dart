import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';

class ListDownMenuTemplate extends StatefulWidget {
  final String imgInactive;
  final String imgActive;
  final String text;
  final FontWeight weight;
  const ListDownMenuTemplate(
      this.imgInactive, this.imgActive, this.text, this.weight,
      {Key? key,})
      : super(key: key);

  @override
  State<ListDownMenuTemplate> createState() => _ListDownMenuState();
}

class _ListDownMenuState extends State<ListDownMenuTemplate> {
  _ListDownMenuState();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    String imgNow = widget.imgInactive;
    FontWeight weightNow = widget.weight;

    return ElevatedButton(
      onPressed: () {
          imgNow = widget.imgActive;
          weightNow = FontWeight.w800;        
      },
      style: ElevatedButton.styleFrom(
        primary: menuColor,
        elevation: 0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Column(
          children: [
            SvgPicture.asset(imgNow),
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: weightNow,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
