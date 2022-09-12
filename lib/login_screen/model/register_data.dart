class RegisterData {
  String email;
  String password;
  String userName;

  RegisterData(this.email, this.password, this.userName);

  RegisterData.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'],
        userName = json['userName'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'userName': userName,
  };
}
