import 'package:flutter/material.dart';
import 'package:pets_project/list_screen/consts/list_colors.dart';
import 'package:pets_project/list_screen/consts/list_styles.dart';

class ProfileButtonView extends StatelessWidget {
  const ProfileButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 214, left: 114, right: 114),
      child: TextButton(
        onPressed: () => _showAlertDialog(context),
        child: const Text(
          'Сохранить',
          style: buttonSaveTextStyle,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 19),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: buttonColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
  
  // ignore: long-method
  void _showAlertDialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 56),
            child: Text(
              'Сохранить изменения?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [ Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () => Navigator.of(context).pushNamed('/profile'),
                  child: const Text('Не сохранять'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 19),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pushNamed('/profile'),
                  child: const Text('Сохранить'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 19),
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
        ),
        ],
      ),
    );
  }
}
