import 'package:dio/dio.dart';
import 'package:itacov/model/indonesia_model.dart';
import 'package:itacov/model/provinsi_model.dart';

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
    try {
      Response response = await _dio.get(mainUrl);
      print(response.data);
      return Indonesia.fromJson(response.data);
    } catch (e) {
      return e;
    }
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
