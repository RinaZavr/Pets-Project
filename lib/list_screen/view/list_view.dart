import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/view/list_appbar.dart';

class AnnouncementListView extends StatefulWidget {
  const AnnouncementListView({Key? key}) : super(key: key);

  @override
  State<AnnouncementListView> createState() => _AnnouncementListViewState();
}

class _AnnouncementListViewState extends State<AnnouncementListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListAppBar(),
        ]
        ),
    );
  }
}
