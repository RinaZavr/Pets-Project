import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_images.dart';
import 'package:pets_project/list_screen/consts/list_strings.dart';
import 'package:pets_project/list_screen/view/list_downmenu.dart';
import 'package:pets_project/list_screen/view/list_items.dart';

class AnnouncementListView extends StatefulWidget {
  const AnnouncementListView({Key? key}) : super(key: key);

  @override
  State<AnnouncementListView> createState() => _AnnouncementListViewState();
}

class _AnnouncementListViewState extends State<AnnouncementListView> {
  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _widgetSelect = const [
    Text("Ads"),
    Text("New ad"),
    Text("Profile"),
  ];
  
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: menuColor,
          bottom: const TabBar(
            indicatorWeight: 5,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: constMenuItemFirst),
              Tab(text: constMenuItemSecond), 
              Tab(text: constMenuItemThird),
              Tab(text: constMenuItemFouth),
            ],
          ),
        ),
        body: _widgetSelect.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0? 
                    SvgPicture.asset(firstActiveMenuImg): SvgPicture.asset(firstInactiveMenuImg),
              label: constDownMenuItemOne,
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1? 
                    SvgPicture.asset(secondActiveMenuImg): SvgPicture.asset(secondInactiveMenuImg),
              label: constDownMenuItemTwo,
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2? 
                    SvgPicture.asset(thirdActiveMenuImg): SvgPicture.asset(thirdInactiveMenuImg),
              label: constDownMenuItemThree,
            ),
          ],
          backgroundColor: menuColor,
          currentIndex: _selectedIndex,
          selectedFontSize: 12,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w800,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w400,
          ),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
