import 'package:json_annotation/json_annotation.dart';

part 'get_data_dto.g.dart';

@JsonSerializable()
class GetDataPayload {
  GetDataPayload({
    required this.action,
  });

  factory GetDataPayload.fromJson(Map<String, dynamic> json) => _$GetDataPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$GetDataPayloadToJson(this);

  final String action;
}

@JsonSerializable()
class GetDataResponse {
  GetDataResponse({
    this.success,
    this.statusCode,
    required this.data,
  });

  factory GetDataResponse.fromJson(Map<String, dynamic> json) => _$GetDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetDataResponseToJson(this);

  final bool? success;
  @JsonKey(name: 'status_code')
  final int? statusCode;
  final GetDataResult data;
}

@JsonSerializable()
class GetDataResult {
  GetDataResult({
    this.draw,
    this.recordsTotal,
    this.recordsFiltered,
    this.totalrows,
    required this.data,
  });

  factory GetDataResult.fromJson(Map<String, dynamic> json) => _$GetDataResultFromJson(json);

  Map<String, dynamic> toJson() => _$GetDataResultToJson(this);

  final String? draw;
  final int? recordsTotal;
  final int? recordsFiltered;
  @JsonKey(name: 'total_rows')
  final int? totalrows;
  final List<GetDataContent> data;
}

@JsonSerializable()
class GetDataContent {
  GetDataContent({
    required this.nomor,
    required this.kode,
    required this.nama,
    this.keterangan,
    this.nomormhgelar,
    this.nomormhkota,
    this.alamat,
    this.telp,
    this.hp,
    this.userid,
    this.jenis,
  });

  factory GetDataContent.fromJson(Map<String, dynamic> json) => _$GetDataContentFromJson(json);

  Map<String, dynamic> toJson() => _$GetDataContentToJson(this);

  final int nomor;
  final String kode;
  final String nama;
  final String? keterangan;
  final int? nomormhgelar;
  final int? nomormhkota;
  final String? alamat;
  final String? telp;
  final String? hp;
  @JsonKey(name: 'user_id')
  final String? userid;
  final String? jenis;
}