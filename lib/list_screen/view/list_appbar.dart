import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/view/list_up_menu.dart';

class ListAppBar extends StatelessWidget {
  const ListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return AppBar(
      title: Container(
        height: mediaQuery.size.height*0.13,
        color: const Color.fromRGBO(53, 170, 255, 1),
        child: Row(
          children: const[
            ListUpMenu(),
          ],
        ),
      ),
    );
    // return Container(
    //   height: mediaQuery.size.height*0.13,
    //   color: const Color.fromRGBO(53, 170, 255, 1),
    //   child: Row(
    //     children: const[
    //       ListUpMenu(),
    //     ],
    //   ),
    // );
  }
}
