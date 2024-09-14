import 'package:dio/dio.dart';

class WebServiesces {
  final String _baseurl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  WebServiesces({required this.dio});
  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await dio.get("$_baseurl$endPoint");
    return response.data;
  }
}
