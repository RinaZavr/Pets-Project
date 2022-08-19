class UserTokens {
  String accessToken;
  String refreshToken;
  UserTokens(this.accessToken, this.refreshToken);

  UserTokens.fromJson(Map<String, dynamic> json)
      : accessToken = json['accessToken'],
        refreshToken = json['refreshToken'];

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'refreshToken': refreshToken,
  };
}
