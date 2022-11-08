import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_strings.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:pets_project/list_screen/view/list_bottombar.dart';
import 'package:provider/provider.dart';

class AnnouncementListView extends StatefulWidget {
  const AnnouncementListView({Key? key}) : super(key: key);

  @override
  State<AnnouncementListView> createState() => _AnnouncementListViewState();
}

class _AnnouncementListViewState extends State<AnnouncementListView> {
  @override
  Widget build(BuildContext context) {
    ListState state = Provider.of<ListState>(context);

    return Scaffold(
      body: widgetSelect.elementAt(state.selectedIndex),
      bottomNavigationBar: const ListBottomBar(),
    );
  }
}
