import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:path_provider/path_provider.dart';

class ListState extends ChangeNotifier {
  int selectedIndex = 0;
  String imageProfilePath = "";
  late Image imageProfile;

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Future<void> changeAvatar(String path, CroppedFile? cropImage) async {
    imageProfilePath = path;
    // Directory dir = await getApplicationDocumentsDirectory();
    // String addDir = dir.path;
    // File imageFile = File(addDir + '/profile_picture.jpg');
    // if (await imageFile.exists()) {
    //   imageFile.delete();
    // }
    // imageCache!.clearLiveImages();
    // imageCache!.clear();
    // imageProfile = Image.file(File(imageProfilePath));
    notifyListeners();
  }
}
