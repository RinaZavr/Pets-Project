class LoginData {
  String email;
  String password;

  LoginData(this.email, this.password);

  LoginData.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
  };
}
