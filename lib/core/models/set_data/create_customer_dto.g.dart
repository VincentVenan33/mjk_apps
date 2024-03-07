// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerPayload _$CreateCustomerPayloadFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerPayload(
      action: json['action'] as String,
      requestData:
          CreateRequest.fromJson(json['requestData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCustomerPayloadToJson(
        CreateCustomerPayload instance) =>
    <String, dynamic>{
      'action': instance.action,
      'requestData': instance.requestData,
    };

CreateRequest _$CreateRequestFromJson(Map<String, dynamic> json) =>
    CreateRequest(
      nomormhdesa: json['nomormhdesa'] as int?,
      nomormhkategoricustomer: json['nomormhkategoricustomer'] as int?,
      nomormhtipeoutlet: json['nomormhtipeoutlet'] as int?,
      nomormhgelar: json['nomormhgelar'] as int?,
      nomormhsales: json['nomormhsales'] as int?,
      nomormhkelurahan: json['nomormhkelurahan'] as int?,
      nomormhprovinsi: json['nomormhprovinsi'] as int?,
      nomormhkota: json['nomormhkota'] as int?,
      nomormhkecamatan: json['nomormhkecamatan'] as int?,
      kode: json['kode'] as String,
      nama: json['nama'] as String,
      jatuhtempo: json['jatuh_tempo'] as String,
      plafon: json['plafon'] as String,
      formatcode: json['format_code'] as String,
      alamat: json['alamat'] as String,
      alamatktp: json['alamat_ktp'] as String,
      shareloc: json['share_loc'] as String,
      notelp: json['no_telp'] as String,
      hp: json['hp'] as String,
      ktp: json['ktp'] as String,
      nonpwp: json['nonpwp'] as String,
      kontak: json['kontak'] as String,
      keterangan: json['keterangan'] as String?,
      dibuatoleh: json['dibuat_oleh'] as int,
    );

Map<String, dynamic> _$CreateRequestToJson(CreateRequest instance) =>
    <String, dynamic>{
      'nomormhdesa': instance.nomormhdesa,
      'nomormhkategoricustomer': instance.nomormhkategoricustomer,
      'nomormhtipeoutlet': instance.nomormhtipeoutlet,
      'nomormhgelar': instance.nomormhgelar,
      'nomormhsales': instance.nomormhsales,
      'nomormhkelurahan': instance.nomormhkelurahan,
      'nomormhprovinsi': instance.nomormhprovinsi,
      'nomormhkota': instance.nomormhkota,
      'nomormhkecamatan': instance.nomormhkecamatan,
      'kode': instance.kode,
      'nama': instance.nama,
      'jatuh_tempo': instance.jatuhtempo,
      'plafon': instance.plafon,
      'format_code': instance.formatcode,
      'alamat': instance.alamat,
      'alamat_ktp': instance.alamatktp,
      'share_loc': instance.shareloc,
      'no_telp': instance.notelp,
      'hp': instance.hp,
      'ktp': instance.ktp,
      'nonpwp': instance.nonpwp,
      'kontak': instance.kontak,
      'keterangan': instance.keterangan,
      'dibuat_oleh': instance.dibuatoleh,
    };

CreateCustomerResponse _$CreateCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerResponse(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      data: SetDataContent.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCustomerResponseToJson(
        CreateCustomerResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'data': instance.data,
    };

SetDataContent _$SetDataContentFromJson(Map<String, dynamic> json) =>
    SetDataContent(
      nomor: json['nomor'] as int,
      nomormhusaha: json['nomormhusaha'] as int?,
      kode: json['kode'] as String,
      nama: json['nama'] as String,
      keterangan: json['keterangan'] as String?,
      catatan: json['catatan'] as String?,
    );

Map<String, dynamic> _$SetDataContentToJson(SetDataContent instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nomormhusaha': instance.nomormhusaha,
      'kode': instance.kode,
      'nama': instance.nama,
      'keterangan': instance.keterangan,
      'catatan': instance.catatan,
    };
