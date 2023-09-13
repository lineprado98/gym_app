import 'package:dio/dio.dart';

abstract class IServiceHttp {
  Future<CustomResponse> get(
      {required String url, Map<String, dynamic>? header});
  Future<CustomResponse> post();
}

class CustomResponse {
  final int statusCode;
  final dynamic body;
  CustomResponse({required this.statusCode, required this.body});
}

Map<String, dynamic> json = {};
