import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class $AuthFailure with _$$AuthFailure {
  const factory $AuthFailure.serverFailure() = _ServerFailure;
  const factory $AuthFailure.networkFailure() = _NetworkFailure;
  const factory $AuthFailure.firebaseInvalidVerificationIdFailure() =
      _FirebaseInvalidVerificationIdFailure;
  const factory $AuthFailure.firebaseSmsCodeFailure() = _FirebaseSmsCodeFailure;
  const factory $AuthFailure.tooManyRequestsFailure() =
      _FirebaseTooManyRequestsFailure;
  const factory $AuthFailure.firebaseAuthCredentialFailure() =
      _FirebaseAuthCredentialFailure;
  const factory $AuthFailure.authCodeTimeOut() = _FirebaseAuthCodeTimeOut;

  factory $AuthFailure.fromFirebaseException(FirebaseAuthException exception) {
    switch (exception.code) {
      case 'invalid-verification-id':
        return const $AuthFailure.firebaseInvalidVerificationIdFailure();
      case 'invalid-verification-code':
        return const $AuthFailure.firebaseSmsCodeFailure();
      case 'too-many-requests':
        return const $AuthFailure.tooManyRequestsFailure();
      default:
        return const $AuthFailure.serverFailure();
    }
  }
}
