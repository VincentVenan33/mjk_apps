import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/apis/get_data_dto_api.dart';
import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/models/parsed_response.dart';
import 'package:mjk_apps/core/services/dio_service.dart';
import 'package:mjk_apps/core/utilities/error_utils.dart';
import 'package:retrofit/dio.dart';

final getDataDTOApi = Provider<GetDataDTOService>((ref) {
  final DioService dio = ref.read(dioProvider);
  return GetDataDTOService(
    dio.getDio(domainType: DomainType.account),
  );
});

class GetDataDTOService {
  GetDataDTOService(
    Dio dio,
  ) : api = GetDataDTOApi(
          dio,
        );
  final GetDataDTOApi api;

  Future<Either<Failure, GetDataResponse>> getData({
    required String action,
  }) async {
    try {
      final payload = GetDataPayload(
        action: action,
      );
      final HttpResponse<dynamic> response = await api.getData(
        'application/json',
        payload,
      );
      if (response.isSuccess) {
        return Right<Failure, GetDataResponse>(
          GetDataResponse.fromJson(
            response.data,
          ),
        );
      }
      return ErrorUtils<GetDataResponse>().handleDomainError(
        response,
      );
    } catch (e) {
      return ErrorUtils<GetDataResponse>().handleError(e);
    }
  }
}