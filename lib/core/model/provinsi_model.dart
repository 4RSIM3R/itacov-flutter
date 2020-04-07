import 'package:json_annotation/json_annotation.dart';

part 'provinsi_model.g.dart';

@JsonSerializable()
class ProvinsiModel {
  Attributes attributes;

  ProvinsiModel({this.attributes});

  factory ProvinsiModel.fromJson(Map<String, dynamic> json) => _$ProvinsiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinsiModelToJson(this);

  @override
  String toString() {
    return 'ProvinsiModel{attributes: $attributes}';
  }
}

@JsonSerializable()
class Attributes {
  @JsonKey(name: 'FID')
  int fID;
  @JsonKey(name: 'Kode_Provi')
  int kodeProvinsi;
  @JsonKey(name: 'Provinsi')
  String provinsi;
  @JsonKey(name: 'Kasus_Posi')
  int kasusPositif;
  @JsonKey(name: "Kasus_Semb")
  int kasusSembuh;
  @JsonKey(name: 'Kasus_Meni')
  int kasusMeninggal;

  Attributes({
    this.fID,
    this.kodeProvinsi,
    this.provinsi,
    this.kasusPositif,
    this.kasusSembuh,
    this.kasusMeninggal,
  });

  /*Attributes.fromJson(Map<String, dynamic> json) {
    fID = json['FID'];
    kodeProvinsi = json['Kode_Provi'];
    provinsi = json['Provinsi'];
    kasusPositif = json['Kasus_Posi'];
    kasusSembuh = json['Kasus_Semb'];
    kasusMeninggal = json['Kasus_Meni'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FID'] = this.fID;
    data['Kode_Provi'] = this.kodeProvinsi;
    data['Provinsi'] = this.provinsi;
    data['Kasus_Posi'] = this.kasusPositif;
    data['Kasus_Semb'] = this.kasusSembuh;
    data['Kasus_Meni'] = this.kasusMeninggal;
    return data;
  }*/

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  String toString() {
    return 'Attributes{fID: $fID, kodeProvinsi: $kodeProvinsi, provinsi: $provinsi, kasusPositif: $kasusPositif, kasusSembuh: $kasusSembuh, kasusMeninggal: $kasusMeninggal}';
  }
}
