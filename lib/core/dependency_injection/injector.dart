import 'package:get_it/get_it.dart';
import 'package:hacksprint_flutter/core/dependency_injection/injector.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async {
  getIt.init();
}
