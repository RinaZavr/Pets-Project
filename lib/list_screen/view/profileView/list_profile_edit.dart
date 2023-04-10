import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_images.dart';
import 'package:pets_project/list_screen/consts/list_styles.dart';
import 'package:pets_project/list_screen/state/list_state.dart';
import 'package:pets_project/list_screen/view/profileView/profile_button.dart';
import 'package:pets_project/list_screen/view/profileView/profile_image.dart';
import 'package:pets_project/list_screen/view/profileView/profile_name_input.dart';
import 'package:provider/provider.dart';

class ListProfileEdit extends StatefulWidget {
  const ListProfileEdit({super.key});

  @override
  State<ListProfileEdit> createState() => _ListProfileEditState();
}

class _ListProfileEditState extends State<ListProfileEdit> {
  @override
  Widget build(BuildContext context) {
    ListState state = Provider.of<ListState>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Изменение профиля',
          style: menuStyle,
        ),
        backgroundColor: menuColor,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                const ProfileImage(),
                FloatingActionButton(
                  onPressed: (() => _showActionSheet(state)),
                  backgroundColor: const Color.fromRGBO(233, 172, 92, 1),
                  child: SvgPicture.asset(editImg),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: ProfileNameInput(false, "Press F"),
            ),
            const ProfileButtonView(),
          ],
        ),
      ),
    );
  }

  void _showActionSheet(ListState state) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () => _cropImage(ImageSource.gallery, state),
            child: const Text(
              'Галерея',
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () => _cropImage(ImageSource.camera, state),
            child: const Text(
              'Камера',
            ),
          ),
        ],
      ),
    );
  }

  void _cropImage(ImageSource source, ListState state) async {
    XFile? image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    CroppedFile? cropImage = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatio: const CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
      uiSettings: [
        IOSUiSettings(
          title: 'Crop Image',
          aspectRatioLockEnabled: true,
          minimumAspectRatio: 1.0,
          aspectRatioPickerButtonHidden: true,
        ),
      ],
    );
    if (cropImage == null) return;
    state.changeAvatar(cropImage.path, cropImage);
  }
}
