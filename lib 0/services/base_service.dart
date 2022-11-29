import 'package:dio/dio.dart';

class BaseService {
  final String baseUrl = 'http://ponto-dev.celulaweb.com.br';
  final String socketExceptionMessage = 'Falha de conexão com a internet!';
  final String defaultExceptionMessage = 'Não sabemos o que aconteceu, tente novamente em instantes';

  late final client  = Dio(BaseOptions(
    baseUrl: '$baseUrl/api',
  ));

  void addDefaultHeader(String headerKey, String headerValue) {
    client.options.headers.addAll({ headerKey: headerValue });
  }

  void removeDefaultHeader(String headerKey) {
    client.options.headers.removeWhere((key, value) => key == headerKey);
  }

  String handleDioError(DioError e) {
    // If the server did not return a 200 OK response,
    // an exception is throw.
    if (e.type == DioErrorType.response) return e.response?.data['message'];

    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.receiveTimeout) return socketExceptionMessage;

    return defaultExceptionMessage;
  }

  void handleValidationError(Response response) {
    throw DioError(
      requestOptions: response.requestOptions,
      type: DioErrorType.response,
      response: Response(requestOptions: response.requestOptions, data: {
        'message': 'As credenciais fornecidas são incorretas ou inválidas.'
      }),
    );
  }
}

final baseService = BaseService();