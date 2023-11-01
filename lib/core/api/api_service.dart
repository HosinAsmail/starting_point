import 'package:dio/dio.dart';
import 'package:starting_point/core/functions/check_internet_function.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String url}) async {
    if (await checkInternetFunction()) {
      var response = await _dio.get(url);
      return response.data;
    } else {
      return {
        "status": "failure",
        "message": "check the internet connection and try again"
      };
    }
  }

  Future<Map<String, dynamic>> post(
      {required String url, required Map<String,dynamic> data}) async {
    if (await checkInternetFunction()) {
      //! using formData is obligatory ..
      final formData = FormData.fromMap(data);
      var response = await _dio.post(url, data: formData);
      print(response.data);
      return response.data;
    } else {
      return {
        "status": "failure",
        "message": "check the internet connection and try again"
      };
    }
  }
}
