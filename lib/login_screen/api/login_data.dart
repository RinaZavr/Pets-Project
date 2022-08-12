import 'package:pets_project/login_screen/state/login_state.dart';

class LoginData {
  String email;
  String password;

  LoginData(this.email, this.password);

  LoginData.fromJson(Map<String, dynamic> json)
      : email = json['name'],
        password = json['email'];

  Map<String, dynamic> toJson() =>
    {
      'email': email,
      'password': password,
    };
}
