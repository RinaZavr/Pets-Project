import 'package:flutter/cupertino.dart';

enum Choice { login, register }

class LoginChoiceState extends ChangeNotifier {
  Choice _choice = Choice.login;
  Choice get choice => _choice;

  void changeScreenReg() {
    _choice = Choice.register;
    notifyListeners();
  }

  void changeScreenLog() {
    _choice = Choice.login;
    notifyListeners();
  }
}
