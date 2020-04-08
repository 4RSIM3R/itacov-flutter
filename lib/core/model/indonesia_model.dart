import 'package:json_annotation/json_annotation.dart';

part 'indonesia_model.g.dart';

@JsonSerializable()
class IndonesiaModel {
  String name;
  String positif;
  String sembuh;
  String meninggal;

  IndonesiaModel({
    this.name,
    this.positif,
    this.sembuh,
    this.meninggal,
  });


  factory IndonesiaModel.fromJson(Map<String, dynamic> json) => _$IndonesiaModelFromJson(json);

  Map<String, dynamic> toJson() => _$IndonesiaModelToJson(this);

  @override
  String toString() {
    return 'IndonesiaModel{name: $name, positif: $positif, sembuh: $sembuh, meninggal: $meninggal}';
  }
}
