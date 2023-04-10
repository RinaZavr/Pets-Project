import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_images.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:provider/provider.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    ListState state = Provider.of<ListState>(context);
    
    return Padding(
      padding: EdgeInsets.only(top: mediaQuery.size.height * 0.06),
      child: CircleAvatar(
        backgroundColor: mockImgBg,
        radius: 92,
        child: state.imageProfilePath == ""? SvgPicture.asset(profileMockImg) : Image.file(File(state.imageProfilePath)),
      ),
    );
  }
}
