import 'package:dio/dio.dart';
import 'package:equitysoft/service/endponts.dart';

Future getHttpsServiceFuture(String requestUrl, {responseSerializer,
  Map<String, dynamic> queryParams}) async {

  Response httpResponse;
  Dio dio = new Dio();

  dio.options.baseUrl = Api.baseUrl;
  dio.options.connectTimeout = 15000;
  dio.options.receiveTimeout = 15000;

  try {
    print("url = ${Api.baseUrl+requestUrl}");
    httpResponse = await dio.get(Api.baseUrl+requestUrl);
  } on DioError catch (error) {
    switch (error.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        return null;
      case DioErrorType.RECEIVE_TIMEOUT:
        return null;
      case DioErrorType.SEND_TIMEOUT:
        return null;
      case DioErrorType.CANCEL:
        return null;
      case DioErrorType.DEFAULT:
        return null;
      case DioErrorType.RESPONSE:
        return null;
    }
    // TODO: log error

  }

  if (httpResponse.statusCode < 300 && httpResponse.statusCode >= 200) {
    Map<String, dynamic> responseBody;
    if (responseSerializer != null) {
      responseBody = responseSerializer(httpResponse.data);
    } else {
      responseBody = httpResponse.data;
    }
    return responseBody;
  } else {
    return null;
  }
}