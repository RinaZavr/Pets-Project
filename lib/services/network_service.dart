import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pets_project/login_screen/model/data_output.dart';
import 'package:pets_project/login_screen/model/login_data.dart';
import 'package:pets_project/login_screen/model/login_user_tokens.dart';
import 'package:pets_project/login_screen/model/register_data.dart';

class NetworkService {
  final String _address = "https://petsproject.issart.com/api/1.0.0";

  Future<void> healthCheck() async {
    var url = Uri.parse("$_address/tech/healthcheck");
    http.Response resp = await http.get(url);
  }

  Future<DataOutput> login(LoginData data) async {
    var url = Uri.parse("$_address/login/email");
    http.Response resp = await http.post(
      url,
      body: jsonEncode(data.toJson()),
      headers: {
        "Content-type": "application/json",
      },
    );

    return resp.statusCode == 200 ? 
      DataOutput(UserTokens.fromJson(jsonDecode(resp.body)), resp.statusCode) : 
      DataOutput(null, resp.statusCode);
  }

  Future<DataOutput> register(RegisterData data) async {
    var url = Uri.parse("$_address/register/email");
    http.Response resp = await http.post(
      url,
      body: jsonEncode(data.toJson()),
      headers: {
        "Content-type": "application/json",
      },
    );

    return resp.statusCode == 200 ? 
      DataOutput(UserTokens.fromJson(jsonDecode(resp.body)), resp.statusCode) : 
      DataOutput(null, resp.statusCode);
  }
}
