import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pets_project/login_screen/api/login_data.dart';
import 'package:pets_project/login_screen/api/login_user_tokens.dart';

class NetworkService {
  final String _address = "https://petsproject.issart.com/api/1.0.0";

  Future<void> healthCheck() async {
    var url = Uri.parse("$_address/tech/healthcheck");
    http.Response resp = await http.get(url);

    print(resp.statusCode);
  }

  Future<UserTokens?> login(LoginData data) async {
    var url = Uri.parse("$_address/login/email");
    http.Response resp = await http.post(
      url,
      body: jsonEncode(data.toJson()),
      headers: {
        "Content-Type": "application/json",
      },
    );

    return resp.statusCode == 200 ? UserTokens.fromJson(jsonDecode(resp.body)) : null;
  }
}
