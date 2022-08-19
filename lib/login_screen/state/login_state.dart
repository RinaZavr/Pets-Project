import 'package:flutter/cupertino.dart';
import 'package:pets_project/login_screen/api/login_data.dart';
import 'package:pets_project/login_screen/api/login_network.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';
import 'dart:convert';

class LoginState extends ChangeNotifier {
  String nameInput = "";
  String emailInput = "";
  String passInput = "";
  String repPassInput = "";
  bool isErrorName = false;
  bool isErrorEmail = false;
  bool isErrorPass = false;
  bool isErrorRepPass = false;
  String submitData = "";
  NetworkService network;
  LoginState(this.network);

  void changeName(String name) {
    nameInput = name;
  }

  void changeEmail(String email) {
    emailInput = email;
  }

  void changePass(String pass) {
    passInput = pass;
  }

  void repeatPass(String repPass) {
    repPassInput = repPass;
  }

  void tryToSubmit(Choice type) {
    RegExp templateEmail = RegExp(r'\w+@gmail.com');
    if (type == Choice.register) {
      isErrorName = nameInput.length > 3 ? false : true;
      isErrorEmail = templateEmail.hasMatch(emailInput) ? false : true;
      isErrorPass = passInput.length > 8 ? false : true;
      isErrorRepPass = passInput == repPassInput ? false : true;
    }
    if (type == Choice.login) {
      isErrorEmail = templateEmail.hasMatch(emailInput) ? false : true;
      isErrorPass = passInput.length > 8 ? false : true;
      LoginData userData = LoginData(emailInput, passInput);
      submitData = jsonEncode(userData.toJson());
      print(submitData);
    }
    network.healthCheck();
    notifyListeners();
  }
}
