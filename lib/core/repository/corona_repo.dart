import 'package:dio/dio.dart';
import 'package:itacov/core/model/indonesia_model.dart';
import 'package:itacov/core/model/provinsi_model.dart';

/// Ini Adalah Class Repo
/// getDataIndonesia() ,
/// getProvinsi()
/// @return Map

class RepoApi {
  static String mainUrl = "https://api.kawalcorona.com";
  var provinsiUrl = '$mainUrl/indonesia/provinsi';
  var indonesia = '$mainUrl/indonesia';

  Dio _dio = Dio();

  Future<Indonesia> getDataIndonesia() async {
    Response response = await _dio.get(indonesia);
    return Indonesia.fromJson(response.data[0]);
  }

  /// @return map
  /// get Data Provinsi
  Future<Provinsi> getProvinsi() async {
    try {
      Response response = await _dio.get(provinsiUrl);
      print(response.data);
      return Provinsi.fromJson(response.data);
    } catch (e) {
      return e;
    }
  }
}
