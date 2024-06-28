import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://127.0.0.1:8000/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await dio.get(endPoint);
      return response;
    } on DioException catch (e) {
      // Handle error
      print('Error: ${e.message}');
      throw e;
    }
  }

  static Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    try {
      Response response = await dio.post(
        endPoint,
        data: data,
        queryParameters: query,
      );
      return response;
    } on DioException catch (e) {
      // Handle error
      print('Error: ${e.message}');
      throw e;
    }
  }
}
