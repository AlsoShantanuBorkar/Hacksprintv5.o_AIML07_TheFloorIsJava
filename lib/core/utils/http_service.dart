import 'package:dio/dio.dart';

class Http {
  final Dio api;

  Http()
      : api = Dio(BaseOptions(
            connectTimeout: const Duration(seconds: 120),
            receiveTimeout: const Duration(seconds: 120)));
}

Http http = Http();
