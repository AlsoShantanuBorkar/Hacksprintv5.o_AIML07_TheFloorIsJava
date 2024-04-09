import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class Http {
  final Dio api;

  Http()
      : api = Dio(BaseOptions(
            connectTimeout: const Duration(seconds: 120),
            receiveTimeout: const Duration(seconds: 120)));
}

Http http = Http();
