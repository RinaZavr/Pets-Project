import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_strings.dart';

class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
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
        body: PageView(),
      ),
    );
  }
}
