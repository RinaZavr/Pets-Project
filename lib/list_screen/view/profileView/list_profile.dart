import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_images.dart';
import 'package:pets_project/list_screen/consts/list_styles.dart';
import 'package:pets_project/list_screen/consts/list_values.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:pets_project/list_screen/view/profileView/profile_image.dart';
import 'package:provider/provider.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    ListState state = Provider.of<ListState>(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: menuColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/editprofile");
              state.changeIndex(profileTabIndex);
            },
            icon: SvgPicture.asset(editProfileImg),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const ProfileImage(),
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.size.height * 0.06),
              child: const Text(
                "Имя",
                style: nameStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.size.height * 0.25),
              child: TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(
                      mediaQuery.size.width * 0.53,
                      mediaQuery.size.height * 0.07,
                    ),
                  ),
                ),
                onPressed: null,
                child: const Text(
                  "Изменить пароль",
                  style: buttonStyle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.size.height * 0.02),
              child: FloatingActionButton.extended(
                icon: SvgPicture.asset(exitImg),
                label: const Text(
                  'Выйти',
                  style: buttonStyle,
                ),
                onPressed: null,
                backgroundColor: buttonBg,
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
