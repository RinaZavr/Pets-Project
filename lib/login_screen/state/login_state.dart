import 'package:flutter/cupertino.dart';
import 'package:pets_project/login_screen/model/data_output.dart';
import 'package:pets_project/login_screen/model/login_data.dart';
import 'package:pets_project/login_screen/model/login_user_tokens.dart';
import 'package:pets_project/login_screen/model/register_data.dart';
import 'package:pets_project/repositories/user_local_rep.dart';
import 'package:pets_project/services/network_service.dart';
import 'package:pets_project/login_screen/state/login_choice_state.dart';

class LoginState extends ChangeNotifier {
  String nameInput = "";
  String emailInput = "";
  String passInput = "";
  String repPassInput = "";
  bool isErrorName = false;
  bool isErrorEmail = false;
  bool isErrorPass = false;
  bool isErrorRepPass = false;
  int isErrorData = 200;

  NetworkService network;
  UserLocalRepositories rep;

  LoginState(this.network, this.rep) {
    UserTokens? logData = rep.getTokens();
  }

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

  void tryToSubmit(Choice type) async {
    RegExp templateEmail = RegExp(r'\w+@\w+.\w+');
    switch (type) {
      case Choice.register:
        isErrorName = nameInput.length > 3 ? false : true;
        isErrorEmail = templateEmail.hasMatch(emailInput) ? false : true;
        isErrorPass = passInput.length > 8 ? false : true;
        isErrorRepPass = passInput == repPassInput ? false : true;

        final DataOutput submitData = await network
            .register(RegisterData(emailInput, passInput, nameInput));
        isErrorData = submitData.code;

        if (submitData.data != null) {
          rep.saveTokens(submitData.data!);
        }
        break;

      case Choice.login:
        isErrorEmail = templateEmail.hasMatch(emailInput) ? false : true;
        isErrorPass = passInput.length > 8 ? false : true;

        final DataOutput submitData =
            await network.login(LoginData(emailInput, passInput));
        isErrorData = submitData.code;

        if (submitData.data != null) {
          rep.saveTokens(submitData.data!);
        }
        break;
    }
    print(isErrorData);
    network.healthCheck();
    notifyListeners();
  }
}
