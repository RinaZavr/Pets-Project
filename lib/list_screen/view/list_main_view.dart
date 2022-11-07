import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:provider/provider.dart';

class AnnouncementListView extends StatefulWidget {
  const AnnouncementListView({Key? key}) : super(key: key);

  @override
  State<AnnouncementListView> createState() => _AnnouncementListViewState();
}

class _AnnouncementListViewState extends State<AnnouncementListView> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListState>(
      create: (context)=>ListState(),
      child: ListView(),
    );
  }
}
