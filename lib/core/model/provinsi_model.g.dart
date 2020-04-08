// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provinsi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvinsiModel _$ProvinsiModelFromJson(Map<String, dynamic> json) {
  return ProvinsiModel(
    attributes: json['attributes'] == null
        ? null
        : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProvinsiModelToJson(ProvinsiModel instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes(
    fID: json['FID'] as int,
    kodeProvinsi: json['Kode_Provi'] as int,
    provinsi: json['Provinsi'] as String,
    kasusPositif: json['Kasus_Posi'] as int,
    kasusSembuh: json['Kasus_Semb'] as int,
    kasusMeninggal: json['Kasus_Meni'] as int,
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'FID': instance.fID,
      'Kode_Provi': instance.kodeProvinsi,
      'Provinsi': instance.provinsi,
      'Kasus_Posi': instance.kasusPositif,
      'Kasus_Semb': instance.kasusSembuh,
      'Kasus_Meni': instance.kasusMeninggal,
    };
