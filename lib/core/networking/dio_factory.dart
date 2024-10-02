import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;

  static const timeOut = Duration(seconds: 30);

  static Dio get dio {
    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioLogger();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void addDioLogger() {
    _dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true
      ),
    );
  }
}
