import 'package:flutter/cupertino.dart';
import 'package:pets_project/login_screen/state/login_state.dart';

enum Choice { login, register }

class LoginChoiceState extends ChangeNotifier {
  Choice _choice = Choice.login;
  Choice get choice => _choice;

  void changeScreenReg() {
    LoginState(false, false, false, false);
    _choice = Choice.register;
    notifyListeners();
  }

  void changeScreenLog() {
    LoginState(false, false, false, false);
    _choice = Choice.login;
    notifyListeners();
  }
}
