import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_event.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_state.dart';
import 'package:hacksprint_flutter/application/repository/auth_repository.dart';
import 'package:hacksprint_flutter/core/failure/failures.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository})
      : super(AuthState(isAuthenticated: false, isLoading: false, user: null)) {
    _firebaseAuth.authStateChanges().listen((User? user) {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        if (user == null) {
          add(const AuthEvent.userNotFound());
        } else {
          add(AuthEvent.userFound(user: user));
        }
      });
    });
    on<AuthEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        signUpRequested: () async => await _signUpRequestedHandler(emit),
        signOut: () async => await _signOutHandler(emit),
        userNotFound: () => emit(state.copyWith(
            isAuthenticated: false, isLoading: false, user: null)),
        userFound: (user) => emit(state.copyWith(
            isAuthenticated: true, isLoading: false, user: user)),
      );
    });
  }

  Future<void> _signUpRequestedHandler(Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));
    Either<Failure, User?> response = await authRepository.signupWithGoogle();

    response.fold(
      (l) => emit(state.copyWith(isLoading: false)),
      (r) => r != null
          ? emit(
              state.copyWith(isAuthenticated: true, isLoading: false, user: r))
          : emit(state.copyWith(isLoading: false)),
    );
    emit.isDone;
  }

  Future<void> _signOutHandler(Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));
    await authRepository.signOut();
    emit(state.copyWith(isLoading: false, isAuthenticated: false, user: null));
  }
}
