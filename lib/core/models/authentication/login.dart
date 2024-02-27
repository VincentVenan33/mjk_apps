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
    this.success,
    this.statusCode,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  final bool? success;
  @JsonKey(name: 'status_code')
  final int? statusCode;
  final LoginResponseData data;
}

@JsonSerializable()
class LoginResponseData {
  LoginResponseData({
    required this.token,
    required this.user,
  });

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);

  final String token;
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
