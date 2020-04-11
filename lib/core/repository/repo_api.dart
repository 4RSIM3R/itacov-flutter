import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:itacov/core/model/dunia/dunia_model.dart';
import 'package:itacov/core/model/indonesia/indonesia_model.dart';
import 'package:itacov/core/model/provinsi_model.dart';

/// Ini Adalah Class Repo
/// getDataIndonesia() ,
/// getProvinsi()
/// @return Map

class RepoApi {
  // API 1
  static String mainUrl = "https://api.kawalcorona.com";
  var provinsiUrl = '$mainUrl/indonesia/provinsi';
  var indonesia = '$mainUrl/indonesia';

  var positifDunia = "$mainUrl/positif";
  var sembuhfDunia = "$mainUrl/sembuh";
  var meninggalDunia = "$mainUrl/meninggal";

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
      return ProvinsiModel.fromJson(response.data);
    } catch (e) {
      return e;
    }
  }

  // Get Data Sembuh Dunia
  Future<Either<String, DuniaModel>> getDataSembuhDunia() async {
    try {
      Response response = await _dio.get(sembuhfDunia);
      return Right(DuniaModel.fromJson(response.data));
    } on DioError catch (error) {
      return Left(error.message);
    }
  }

  // Get data Positf Dunia
  Future<Either<String, DuniaModel>> getDataPositifDunia() async {
    try {
      Response response = await _dio.get(positifDunia);
      return Right(DuniaModel.fromJson(response.data));
    } on DioError catch (error) {
      return Left(error.message);
    }
  }

  Future<Either<String, DuniaModel>> getDataMeninggalDunia() async {
    try {
      Response response = await _dio.get(meninggalDunia);
      return Right(DuniaModel.fromJson(response.data));
    } on DioError catch (error) {
      return Left(error.message);
    }
  }
}
