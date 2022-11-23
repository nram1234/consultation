import 'package:dio/dio.dart';

import '../utility/all_string_const.dart';
import '../utility/storage.dart';


class DioSingleton {

  Dio dio = Dio(BaseOptions(
      headers: {

        'Content-Type': 'application/json'
      }
      ));
  static final DioSingleton _singleton = DioSingleton._internal();

  factory DioSingleton() {
    return _singleton;
  }

  DioSingleton._internal();
}
