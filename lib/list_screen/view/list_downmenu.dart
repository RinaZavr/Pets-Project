import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_images.dart';
import 'package:pets_project/list_screen/consts/list_strings.dart';
import 'package:pets_project/list_screen/view/list_downmenu_template.dart';

class ListDownMenu extends StatefulWidget {
  const ListDownMenu({Key? key}) : super(key: key);

  @override
  State<ListDownMenu> createState() => _ListDownMenuState();
}

class _ListDownMenuState extends State<ListDownMenu> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    
    return Container(
      height: mediaQuery.size.height * 0.11,
      color: menuColor,
      width: mediaQuery.size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ListDownMenuTemplate(
            firstInactiveMenuImg, firstActiveMenuImg, constDownMenuItemOne, FontWeight.w400,),
          ListDownMenuTemplate(
            secondInactiveMenuImg, secondActiveMenuImg, constDownMenuItemTwo, FontWeight.w400,),
          ListDownMenuTemplate(
            thirdInactiveMenuImg, thirdActiveMenuImg, constDownMenuItemThree, FontWeight.w400,),
        ],
      ),
    );
  }
}
