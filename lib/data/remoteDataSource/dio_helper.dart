import 'dart:io';

import 'package:dio/dio.dart';

class DioHelper{
  Dio dio;

  DioHelper._privateConstructor() {
    dio ??= Dio(BaseOptions(baseUrl: ''));
  }

  static final DioHelper _instance = DioHelper._privateConstructor();

  Future<dynamic> get(String route, [Map<String, dynamic> parameters]) async{
    dynamic responseJson;
    try {
      final response = await dio.get(route, queryParameters: parameters);
      responseJson = response.data;
    } on SocketException catch (e){
      throw Exception(e.message);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return responseJson;
  }
}