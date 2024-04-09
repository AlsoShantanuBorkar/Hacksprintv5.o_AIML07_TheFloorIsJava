import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacksprint_flutter/core/failure/auth_failure.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.auth({required $AuthFailure authFailure}) = AuthFailure;
  const factory Failure.cacheFailure() = CacheFailure;
  const factory Failure.firebaseFailure() = FirebaseFailure;
  const factory Failure.commonFailure() = CommonFailure;
  const factory Failure.networkFailure() = NetworkFailure;
}
