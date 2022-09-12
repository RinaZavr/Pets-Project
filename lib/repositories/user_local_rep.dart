import 'dart:convert';

import 'package:pets_project/login_screen/model/login_user_tokens.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLocalRepositories {
  SharedPreferences? prefs;
  final String key = "data";

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  void saveTokens(UserTokens data) {
    Map<String, dynamic> info = data.toJson();
    String json = jsonEncode(info);
    prefs?.setString(key, json);
  }

  UserTokens? getTokens() {
    String repData = prefs?.getString(key) ?? "";

    return repData == "" ? null : UserTokens.fromJson(jsonDecode(repData));
  }
}
