import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_state.freezed.dart";

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(false) bool isAuthenticated,
    @Default(false) bool isLoading,
    @Default(null) User? user,
  }) = _AuthState;
}
