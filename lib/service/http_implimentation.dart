import 'package:dio/dio.dart';
import 'package:getx_api_example/service/http_service.dart';

const base = "http://queein.com/";

class HttpServiceImpl implements HttpService {
  Dio? _dio;
  @override
  Future<Response> getRequest(String url) async {
    Response response;
    try {
      response = await _dio!.get(url);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return response;
  }

  initializeinterceptors() {

  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: base,
    ));
    // initializeinterceptors();
  }

  @override
  Future<Response> postRequest(
      String url, String skey, Map<String, dynamic> data) async {
    Response response;
    var formData = FormData.fromMap(data);
    try {
      response = await _dio!.post(
        url,
        data: formData,
      );
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return response;
  }
}
