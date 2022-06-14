import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonView extends StatelessWidget {
  final String _nameButton;

  const ButtonView(this._nameButton, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return TextButton.icon(
      onPressed: (() {
        print("nice");
      }),
      icon: Padding(
        padding: EdgeInsets.only(left: mediaQuery.size.width * 0.08),
        child: SvgPicture.asset("img/paw.svg"),
      ),
      label: Padding(
        padding: EdgeInsets.only(
          right: mediaQuery.size.width * 0.08,
          top: mediaQuery.size.height * 0.02,
          bottom: mediaQuery.size.height * 0.02),
        child: Text(
          _nameButton,
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: const Color.fromRGBO(53, 170, 255, 1),
        alignment: Alignment.center
      ),
    );
    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: mediaQuery.size.width * 0.3),
    //   child: RawMaterialButton(
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    //     onPressed: () {
    //       print('nice');
    //     },
    //     fillColor: const Color.fromRGBO(53, 170, 255, 1),
    //     // padding: EdgeInsets.symmetric(
    //     //     horizontal: mediaQuery.size.width * 0.08,
    //     //     vertical: mediaQuery.size.height * 0.02),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         const Image(image: AssetImage("img/paw.png")),
    //         Text(
    //           _nameButton,
    //           style: const TextStyle(
    //             color: Color.fromRGBO(255, 255, 255, 1),
    //             fontFamily: 'Mulish-Italic',
    //             fontWeight: FontWeight.w700,
    //             fontSize: 16,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
