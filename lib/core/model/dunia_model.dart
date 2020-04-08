import 'package:json_annotation/json_annotation.dart';

part 'dunia_model.g.dart';

@JsonSerializable()
class DuniaModel {
  String name;
  String value;
  DuniaModel({this.name, this.value});
  factory DuniaModel.fromJson(Map<String, dynamic> json) =>
      _$DuniaModelFromJson(json);
  Map<String , dynamic> toJson() => _$DuniaModelToJson(this);
}
