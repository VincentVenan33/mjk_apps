// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDataPayload _$GetDataPayloadFromJson(Map<String, dynamic> json) =>
    GetDataPayload(
      action: json['action'] as String,
    );

Map<String, dynamic> _$GetDataPayloadToJson(GetDataPayload instance) =>
    <String, dynamic>{
      'action': instance.action,
    };

GetDataResponse _$GetDataResponseFromJson(Map<String, dynamic> json) =>
    GetDataResponse(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      data: GetDataResult.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetDataResponseToJson(GetDataResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'data': instance.data,
    };

GetDataResult _$GetDataResultFromJson(Map<String, dynamic> json) =>
    GetDataResult(
      draw: json['draw'] as String?,
      recordsTotal: json['recordsTotal'] as int?,
      recordsFiltered: json['recordsFiltered'] as int?,
      totalrows: json['total_rows'] as int?,
      data: (json['data'] as List<dynamic>)
          .map((e) => GetDataContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetDataResultToJson(GetDataResult instance) =>
    <String, dynamic>{
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'total_rows': instance.totalrows,
      'data': instance.data,
    };

GetDataContent _$GetDataContentFromJson(Map<String, dynamic> json) =>
    GetDataContent(
      nomor: json['nomor'] as int,
      kode: json['kode'] as String,
      nama: json['nama'] as String,
      keterangan: json['keterangan'] as String?,
      nomormhgelar: json['nomormhgelar'] as int?,
      nomormhkota: json['nomormhkota'] as int?,
      nomormhdesa: json['nomormhdesa'] as int?,
      nomormhsales: json['nomormhsales'] as int?,
      nomormhtipeoutlet: json['nomormhtipeoutlet'] as int?,
      nomormhkategoricustomer: json['nomormhkategoricustomer'] as int?,
      nomormhkelurahan: json['nomormhkelurahan'] as int?,
      nomormhprovinsi: json['nomormhprovinsi'] as int?,
      nomormhkecamatan: json['nomormhkecamatan'] as int?,
      kontak: json['kontak'] as String?,
      alamatktp: json['alamatktp'] as String?,
      shareloc: json['shareloc'] as String?,
      jatuhtempo: json['jatuhtempo'] as int?,
      plafon: json['plafon'] as int?,
      formatcode: json['formatcode'] as String?,
      nonpwp: json['nonpwp'] as String?,
      ktp: json['ktp'] as String?,
      notelp: json['notelp'] as String?,
      tanggaleditplafon: json['tanggal_edit_plafon'] as String?,
      alamat: json['alamat'] as String?,
      telp: json['telp'] as String?,
      hp: json['hp'] as String?,
      userid: json['user_id'] as String?,
      jenis: json['jenis'] as String?,
    );

Map<String, dynamic> _$GetDataContentToJson(GetDataContent instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'kode': instance.kode,
      'nama': instance.nama,
      'keterangan': instance.keterangan,
      'nomormhgelar': instance.nomormhgelar,
      'nomormhkota': instance.nomormhkota,
      'nomormhdesa': instance.nomormhdesa,
      'nomormhsales': instance.nomormhsales,
      'nomormhtipeoutlet': instance.nomormhtipeoutlet,
      'nomormhkategoricustomer': instance.nomormhkategoricustomer,
      'nomormhkelurahan': instance.nomormhkelurahan,
      'nomormhprovinsi': instance.nomormhprovinsi,
      'nomormhkecamatan': instance.nomormhkecamatan,
      'kontak': instance.kontak,
      'alamatktp': instance.alamatktp,
      'shareloc': instance.shareloc,
      'jatuhtempo': instance.jatuhtempo,
      'plafon': instance.plafon,
      'formatcode': instance.formatcode,
      'nonpwp': instance.nonpwp,
      'ktp': instance.ktp,
      'notelp': instance.notelp,
      'tanggal_edit_plafon': instance.tanggaleditplafon,
      'alamat': instance.alamat,
      'telp': instance.telp,
      'hp': instance.hp,
      'user_id': instance.userid,
      'jenis': instance.jenis,
    };
