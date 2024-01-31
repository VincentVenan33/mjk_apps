import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginRequest {
  LoginRequest({
    required this.kode,
    required this.sandi,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  final String kode;
  final String sandi;
}

@JsonSerializable()
class LoginResponse {
  LoginResponse({
    this.code,
    this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  final int? code;
  final String? message;
  final LoginResponseData data;
}

@JsonSerializable()
class LoginResponseData {
  LoginResponseData({
    required this.tokenLogin,
    required this.user,
  });

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);

  @JsonKey(name: 'token_login')
  final String tokenLogin;
  final UserData user;
}

@JsonSerializable()
class UserData {
  UserData({
    required this.nomor,
    required this.nama,
    // required this.jenisUser,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);

  final int nomor;
  final String nama;
  // @JsonKey(name: 'jenis_user')
  // final String jenisUser;
}
