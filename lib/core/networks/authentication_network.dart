import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/apis/authentication_api.dart';
import 'package:mjk_apps/core/models/authentication/login.dart';
import 'package:mjk_apps/core/models/parsed_response.dart';
import 'package:mjk_apps/core/services/dio_service.dart';
import 'package:mjk_apps/core/services/shared_preferences_service.dart';
import 'package:mjk_apps/core/utilities/error_utils.dart';
import 'package:retrofit/dio.dart';

final authenticationApi = Provider<AuthenticationApiService>((ref) {
  final SharedPreferencesService sharedPref = ref.read(sharedPrefProvider);
  final DioService dio = ref.read(dioProvider);
  return AuthenticationApiService(
    dio.getDio(domainType: DomainType.account),
    sharedPref,
  );
});

class AuthenticationApiService {
  AuthenticationApiService(
    Dio dio,
    this.sharedPref,
  ) : api = AuthenticationApi(
          dio,
        );
  final SharedPreferencesService sharedPref;
  final AuthenticationApi api;

  Future<Either<Failure, LoginResponse>> login({
    required String username,
    required String password,
  }) async {
    try {
      final payload = LoginRequest(
        username: username,
        password: password,
      );
      final HttpResponse<dynamic> response = await api.login(
        'application/json',
        payload,
      );
      if (response.isSuccess) {
        return Right<Failure, LoginResponse>(
          LoginResponse.fromJson(
            response.data,
          ),
        );
      }
      return ErrorUtils<LoginResponse>().handleDomainError(
        response,
      );
    } catch (e) {
      return ErrorUtils<LoginResponse>().handleError(e);
    }
  }
}
