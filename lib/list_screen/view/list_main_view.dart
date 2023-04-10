import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:pets_project/list_screen/view/list_view.dart';
import 'package:pets_project/list_screen/view/profileView/list_profile_edit.dart';
import 'package:provider/provider.dart';

class AnnouncementListMainView extends StatefulWidget {
  const AnnouncementListMainView({Key? key}) : super(key: key);

  @override
  State<AnnouncementListMainView> createState() =>
      _AnnouncementListMainViewState();
}

class _AnnouncementListMainViewState extends State<AnnouncementListMainView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListState>(
      create: (context) => ListState(),
      child: MaterialApp(
        routes: {
        "/editprofile":(context) => const ListProfileEdit(),
        },
        home: const AnnouncementListView(),
      ),
    );
  }
}
