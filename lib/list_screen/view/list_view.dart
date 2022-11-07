import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_strings.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:pets_project/list_screen/view/list_bottombar.dart';
import 'package:provider/provider.dart';

class ListView extends StatefulWidget {
  const ListView({Key? key}) : super(key: key);

  @override
  State<ListView> createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  @override
  Widget build(BuildContext context) {
    ListState state = Provider.of<ListState>(context);

    return Scaffold(
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
      body: widgetSelect.elementAt(state.selectedIndex),
      bottomNavigationBar: const ListBottomBar(),
    );
  }
}
