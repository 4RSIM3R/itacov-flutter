import 'package:dartz/dartz.dart';
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

  Future<Either<String,IndonesiaModel>> getDataIndonesia() async {
    try {
      Response response = await _dio.get(indonesia);
      return Right(IndonesiaModel.fromJson(response.data[0]));
    } on DioError catch (error) {
      return Left(error.message);
    }
  }

  /// @return map
  /// get Data Provinsi
  Future<ProvinsiModel> getProvinsi() async {
    try {
      Response response = await _dio.get(provinsiUrl);
      print(response.data);
      return ProvinsiModel.fromJson(response.data);
    } catch (e) {
      return e;
    }
  }
}
