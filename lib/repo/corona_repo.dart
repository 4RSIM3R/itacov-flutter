// Tambahkan Api Yang Akan Di Consume Ke Bloc
import 'package:dio/dio.dart';

class CoronaRepo {
  static String baseUrl = "https://api.kawalcorona.com/";
  final Dio _dio = Dio();
  var getProvinsi = "$baseUrl/indonesia/provinsi";

  // Ambil Ke Api Secara Global
  Future<Response> getGlobal() async {
    try {
      Response response = await _dio.get(baseUrl);
      // harus nya Ini Di Ambil Dari Model Data
      return response.data;
    } catch (e) {
      return e;
    }
  }

  Future<Response> getDatProvinsi() async {
    try {
      Response response = await _dio.get(getProvinsi);
      return response.data;
    } catch (e) {
      return e ;
    }
  }
}
