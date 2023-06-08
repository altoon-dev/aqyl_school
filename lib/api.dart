import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'http://10.0.2.2:8000/';
  late Dio dio;

  ApiService() {

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.json,
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    dio = Dio(options);
    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        logPrint: _logEvent,
      ),
    );
  }
  _logEvent(Object? object) {
    var pattern = RegExp('.{1,800}');
    pattern
        .allMatches(object.toString())
    // ignore: avoid_print
        .forEach((match) => print(match.group(0)));
  }

  Future<Response> createPayment(Map<String, dynamic> paymentData) async {
    final url = 'payments/test-payment/';
    final response = await dio.post(url, data: paymentData);
    return response;
  }

// Добавьте другие методы API,verifyTransaction и т.д.
}
