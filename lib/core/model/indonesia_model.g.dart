// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indonesia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndonesiaModel _$IndonesiaModelFromJson(Map<String, dynamic> json) {
  return IndonesiaModel(
    name: json['name'] as String,
    positif: json['positif'] as String,
    sembuh: json['sembuh'] as String,
    meninggal: json['meninggal'] as String,
  );
}

Map<String, dynamic> _$IndonesiaModelToJson(IndonesiaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'positif': instance.positif,
      'sembuh': instance.sembuh,
      'meninggal': instance.meninggal,
    };
