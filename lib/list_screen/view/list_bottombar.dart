import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_images.dart';
import 'package:pets_project/list_screen/consts/list_strings.dart';
import 'package:pets_project/list_screen/consts/list_styles.dart';
import 'package:pets_project/list_screen/consts/list_values.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:provider/provider.dart';

class ListBottomBar extends StatefulWidget {
  const ListBottomBar({Key? key}) : super(key: key);

  @override
  State<ListBottomBar> createState() => _ListBottomBarState();
}

class _ListBottomBarState extends State<ListBottomBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    ListState state = Provider.of<ListState>(context);

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == announcementTabIndex
              ? SvgPicture.asset(firstActiveMenuImg)
              : SvgPicture.asset(firstInactiveMenuImg),
          label: constDownMenuItemOne,
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == newAdTabIndex
              ? SvgPicture.asset(secondActiveMenuImg)
              : SvgPicture.asset(secondInactiveMenuImg),
          label: constDownMenuItemTwo,
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == profileTabIndex
              ? SvgPicture.asset(thirdActiveMenuImg)
              : SvgPicture.asset(thirdInactiveMenuImg),
          label: constDownMenuItemThree,
        ),
      ],
      backgroundColor: menuColor,
      currentIndex: _selectedIndex,
      selectedFontSize: fontSizeMenu,
      selectedLabelStyle: selectedLabelStyle,
      unselectedLabelStyle: unselectedLabelStyle,
      unselectedItemColor: menuItem,
      selectedItemColor: menuItem,
      onTap: (int index) {
        state.changeIndex(index);
      },
    );
  }
}
