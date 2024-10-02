import 'package:dio/dio.dart';
import 'package:doc_center/core/networking/dio_factory.dart';

import 'package:get/get.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {

    final dio = DioFactory.dio;

    Get.put<Dio>(dio, permanent: true);


  }
}
