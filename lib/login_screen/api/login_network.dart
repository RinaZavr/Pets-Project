import 'dart:async';
import 'package:http/http.dart' as http;

class NetworkService {
  final String _address = "https://petsproject.issart.com/api/1.0.0";

  Future<void> healthCheck() async {
    var url = Uri.parse("$_address/tech/healthcheck");
    http.Response resp = await http.get(url);

    print(resp.statusCode);
  }
}
