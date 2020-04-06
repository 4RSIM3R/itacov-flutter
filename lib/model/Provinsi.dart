class Provinsi {
  Attributes attributes;

  Provinsi({this.attributes});

  Provinsi.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes.toJson();
    }
    return data;
  }
}

class Attributes {
  int fID;
  int kodeProvi;
  String provinsi;
  int kasusPosi;
  int kasusSemb;
  int kasusMeni;

  Attributes(
      {this.fID,
      this.kodeProvi,
      this.provinsi,
      this.kasusPosi,
      this.kasusSemb,
      this.kasusMeni});

  Attributes.fromJson(Map<String, dynamic> json) {
    fID = json['FID'];
    kodeProvi = json['Kode_Provi'];
    provinsi = json['Provinsi'];
    kasusPosi = json['Kasus_Posi'];
    kasusSemb = json['Kasus_Semb'];
    kasusMeni = json['Kasus_Meni'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FID'] = this.fID;
    data['Kode_Provi'] = this.kodeProvi;
    data['Provinsi'] = this.provinsi;
    data['Kasus_Posi'] = this.kasusPosi;
    data['Kasus_Semb'] = this.kasusSemb;
    data['Kasus_Meni'] = this.kasusMeni;
    return data;
  }
}
