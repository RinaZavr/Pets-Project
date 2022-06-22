import 'package:flutter/cupertino.dart';

class LoginState extends ChangeNotifier {
  String nameInput = "";
  String emailInput = "";
  String passInput = "";
  String repPassInput = "";
  bool isErrorName = false;
  bool isErrorEmail = false;
  bool isErrorPass = false;
  bool isErrorRepPass = false;

  void changeName(String name) {
    nameInput = name;
    notifyListeners();
  }

  void changeEmail(String email) {
    emailInput = email;
    notifyListeners();
  }

  void changePass(String pass) {
    passInput = pass;
    notifyListeners();
  }

  void repeatPass(String repPass) {
    repPassInput = repPass;
    notifyListeners();
  }

  void tryToSubmit(String type) {
    RegExp templateEmail = RegExp(r'\w+@gmail.com');
    if (type == "Зарегистрироваться") {
      isErrorName = nameInput.length > 3 ? false : true;
      isErrorEmail = templateEmail.hasMatch(emailInput) ? false : true;
      isErrorPass = passInput.length > 8 ? false : true;
      isErrorRepPass = passInput == repPassInput ? false : true;
    }
    if (type == "Войти") {
      isErrorEmail = templateEmail.hasMatch(emailInput) ? false : true;
      isErrorPass = passInput.length > 8 ? false : true;
    }
    notifyListeners();
  }
}
