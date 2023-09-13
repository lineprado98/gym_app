import 'package:dio/dio.dart';
import 'package:gym/core/service_http/i_service_http.dart';

class ServiceHttpDio implements IServiceHttp {
  final dio = Dio();

  @override
  Future<CustomResponse> get(
      {required String url, Map<String, dynamic>? header}) async {
    final res = await dio.get(url, options: Options(headers: header));
    return CustomResponse(statusCode: res.statusCode ?? 500, body: res.data);
  }

  @override
  Future<CustomResponse> post() {
    // TODO: implement post
    throw UnimplementedError();
  }
}
