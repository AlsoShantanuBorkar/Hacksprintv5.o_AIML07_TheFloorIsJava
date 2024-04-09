import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_event.freezed.dart";

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUpRequested() = _SignUpRequested;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.userNotFound() = _UserNotFound;

  const factory AuthEvent.userFound({required User? user}) = _UserFound;
}
