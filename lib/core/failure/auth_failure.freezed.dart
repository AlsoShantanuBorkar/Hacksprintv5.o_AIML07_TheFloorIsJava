// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $$AuthFailureCopyWith<$Res> {
  factory $$AuthFailureCopyWith(
          $AuthFailure value, $Res Function($AuthFailure) then) =
      _$$AuthFailureCopyWithImpl<$Res, $AuthFailure>;
}

/// @nodoc
class _$$AuthFailureCopyWithImpl<$Res, $Val extends $AuthFailure>
    implements $$AuthFailureCopyWith<$Res> {
  _$$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerFailureImpl
    with DiagnosticableTreeMixin
    implements _ServerFailure {
  const _$ServerFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.serverFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', '\$AuthFailure.serverFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements $AuthFailure {
  const factory _ServerFailure() = _$ServerFailureImpl;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkFailureImpl
    with DiagnosticableTreeMixin
    implements _NetworkFailure {
  const _$NetworkFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.networkFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', '\$AuthFailure.networkFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements $AuthFailure {
  const factory _NetworkFailure() = _$NetworkFailureImpl;
}

/// @nodoc
abstract class _$$FirebaseInvalidVerificationIdFailureImplCopyWith<$Res> {
  factory _$$FirebaseInvalidVerificationIdFailureImplCopyWith(
          _$FirebaseInvalidVerificationIdFailureImpl value,
          $Res Function(_$FirebaseInvalidVerificationIdFailureImpl) then) =
      __$$FirebaseInvalidVerificationIdFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseInvalidVerificationIdFailureImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res,
        _$FirebaseInvalidVerificationIdFailureImpl>
    implements _$$FirebaseInvalidVerificationIdFailureImplCopyWith<$Res> {
  __$$FirebaseInvalidVerificationIdFailureImplCopyWithImpl(
      _$FirebaseInvalidVerificationIdFailureImpl _value,
      $Res Function(_$FirebaseInvalidVerificationIdFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirebaseInvalidVerificationIdFailureImpl
    with DiagnosticableTreeMixin
    implements _FirebaseInvalidVerificationIdFailure {
  const _$FirebaseInvalidVerificationIdFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.firebaseInvalidVerificationIdFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', '\$AuthFailure.firebaseInvalidVerificationIdFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseInvalidVerificationIdFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return firebaseInvalidVerificationIdFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return firebaseInvalidVerificationIdFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (firebaseInvalidVerificationIdFailure != null) {
      return firebaseInvalidVerificationIdFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return firebaseInvalidVerificationIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return firebaseInvalidVerificationIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (firebaseInvalidVerificationIdFailure != null) {
      return firebaseInvalidVerificationIdFailure(this);
    }
    return orElse();
  }
}

abstract class _FirebaseInvalidVerificationIdFailure implements $AuthFailure {
  const factory _FirebaseInvalidVerificationIdFailure() =
      _$FirebaseInvalidVerificationIdFailureImpl;
}

/// @nodoc
abstract class _$$FirebaseSmsCodeFailureImplCopyWith<$Res> {
  factory _$$FirebaseSmsCodeFailureImplCopyWith(
          _$FirebaseSmsCodeFailureImpl value,
          $Res Function(_$FirebaseSmsCodeFailureImpl) then) =
      __$$FirebaseSmsCodeFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseSmsCodeFailureImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res, _$FirebaseSmsCodeFailureImpl>
    implements _$$FirebaseSmsCodeFailureImplCopyWith<$Res> {
  __$$FirebaseSmsCodeFailureImplCopyWithImpl(
      _$FirebaseSmsCodeFailureImpl _value,
      $Res Function(_$FirebaseSmsCodeFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirebaseSmsCodeFailureImpl
    with DiagnosticableTreeMixin
    implements _FirebaseSmsCodeFailure {
  const _$FirebaseSmsCodeFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.firebaseSmsCodeFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', '\$AuthFailure.firebaseSmsCodeFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseSmsCodeFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return firebaseSmsCodeFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return firebaseSmsCodeFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (firebaseSmsCodeFailure != null) {
      return firebaseSmsCodeFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return firebaseSmsCodeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return firebaseSmsCodeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (firebaseSmsCodeFailure != null) {
      return firebaseSmsCodeFailure(this);
    }
    return orElse();
  }
}

abstract class _FirebaseSmsCodeFailure implements $AuthFailure {
  const factory _FirebaseSmsCodeFailure() = _$FirebaseSmsCodeFailureImpl;
}

/// @nodoc
abstract class _$$FirebaseTooManyRequestsFailureImplCopyWith<$Res> {
  factory _$$FirebaseTooManyRequestsFailureImplCopyWith(
          _$FirebaseTooManyRequestsFailureImpl value,
          $Res Function(_$FirebaseTooManyRequestsFailureImpl) then) =
      __$$FirebaseTooManyRequestsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseTooManyRequestsFailureImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res,
        _$FirebaseTooManyRequestsFailureImpl>
    implements _$$FirebaseTooManyRequestsFailureImplCopyWith<$Res> {
  __$$FirebaseTooManyRequestsFailureImplCopyWithImpl(
      _$FirebaseTooManyRequestsFailureImpl _value,
      $Res Function(_$FirebaseTooManyRequestsFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirebaseTooManyRequestsFailureImpl
    with DiagnosticableTreeMixin
    implements _FirebaseTooManyRequestsFailure {
  const _$FirebaseTooManyRequestsFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.tooManyRequestsFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', '\$AuthFailure.tooManyRequestsFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseTooManyRequestsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return tooManyRequestsFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return tooManyRequestsFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (tooManyRequestsFailure != null) {
      return tooManyRequestsFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return tooManyRequestsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return tooManyRequestsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (tooManyRequestsFailure != null) {
      return tooManyRequestsFailure(this);
    }
    return orElse();
  }
}

abstract class _FirebaseTooManyRequestsFailure implements $AuthFailure {
  const factory _FirebaseTooManyRequestsFailure() =
      _$FirebaseTooManyRequestsFailureImpl;
}

/// @nodoc
abstract class _$$FirebaseAuthCredentialFailureImplCopyWith<$Res> {
  factory _$$FirebaseAuthCredentialFailureImplCopyWith(
          _$FirebaseAuthCredentialFailureImpl value,
          $Res Function(_$FirebaseAuthCredentialFailureImpl) then) =
      __$$FirebaseAuthCredentialFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseAuthCredentialFailureImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res,
        _$FirebaseAuthCredentialFailureImpl>
    implements _$$FirebaseAuthCredentialFailureImplCopyWith<$Res> {
  __$$FirebaseAuthCredentialFailureImplCopyWithImpl(
      _$FirebaseAuthCredentialFailureImpl _value,
      $Res Function(_$FirebaseAuthCredentialFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirebaseAuthCredentialFailureImpl
    with DiagnosticableTreeMixin
    implements _FirebaseAuthCredentialFailure {
  const _$FirebaseAuthCredentialFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.firebaseAuthCredentialFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', '\$AuthFailure.firebaseAuthCredentialFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseAuthCredentialFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return firebaseAuthCredentialFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return firebaseAuthCredentialFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (firebaseAuthCredentialFailure != null) {
      return firebaseAuthCredentialFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return firebaseAuthCredentialFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return firebaseAuthCredentialFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (firebaseAuthCredentialFailure != null) {
      return firebaseAuthCredentialFailure(this);
    }
    return orElse();
  }
}

abstract class _FirebaseAuthCredentialFailure implements $AuthFailure {
  const factory _FirebaseAuthCredentialFailure() =
      _$FirebaseAuthCredentialFailureImpl;
}

/// @nodoc
abstract class _$$FirebaseAuthCodeTimeOutImplCopyWith<$Res> {
  factory _$$FirebaseAuthCodeTimeOutImplCopyWith(
          _$FirebaseAuthCodeTimeOutImpl value,
          $Res Function(_$FirebaseAuthCodeTimeOutImpl) then) =
      __$$FirebaseAuthCodeTimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseAuthCodeTimeOutImplCopyWithImpl<$Res>
    extends _$$AuthFailureCopyWithImpl<$Res, _$FirebaseAuthCodeTimeOutImpl>
    implements _$$FirebaseAuthCodeTimeOutImplCopyWith<$Res> {
  __$$FirebaseAuthCodeTimeOutImplCopyWithImpl(
      _$FirebaseAuthCodeTimeOutImpl _value,
      $Res Function(_$FirebaseAuthCodeTimeOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirebaseAuthCodeTimeOutImpl
    with DiagnosticableTreeMixin
    implements _FirebaseAuthCodeTimeOut {
  const _$FirebaseAuthCodeTimeOutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '\$AuthFailure.authCodeTimeOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', '\$AuthFailure.authCodeTimeOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseAuthCodeTimeOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() firebaseInvalidVerificationIdFailure,
    required TResult Function() firebaseSmsCodeFailure,
    required TResult Function() tooManyRequestsFailure,
    required TResult Function() firebaseAuthCredentialFailure,
    required TResult Function() authCodeTimeOut,
  }) {
    return authCodeTimeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? firebaseInvalidVerificationIdFailure,
    TResult? Function()? firebaseSmsCodeFailure,
    TResult? Function()? tooManyRequestsFailure,
    TResult? Function()? firebaseAuthCredentialFailure,
    TResult? Function()? authCodeTimeOut,
  }) {
    return authCodeTimeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? firebaseInvalidVerificationIdFailure,
    TResult Function()? firebaseSmsCodeFailure,
    TResult Function()? tooManyRequestsFailure,
    TResult Function()? firebaseAuthCredentialFailure,
    TResult Function()? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (authCodeTimeOut != null) {
      return authCodeTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_FirebaseInvalidVerificationIdFailure value)
        firebaseInvalidVerificationIdFailure,
    required TResult Function(_FirebaseSmsCodeFailure value)
        firebaseSmsCodeFailure,
    required TResult Function(_FirebaseTooManyRequestsFailure value)
        tooManyRequestsFailure,
    required TResult Function(_FirebaseAuthCredentialFailure value)
        firebaseAuthCredentialFailure,
    required TResult Function(_FirebaseAuthCodeTimeOut value) authCodeTimeOut,
  }) {
    return authCodeTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult? Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult? Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult? Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult? Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
  }) {
    return authCodeTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_FirebaseInvalidVerificationIdFailure value)?
        firebaseInvalidVerificationIdFailure,
    TResult Function(_FirebaseSmsCodeFailure value)? firebaseSmsCodeFailure,
    TResult Function(_FirebaseTooManyRequestsFailure value)?
        tooManyRequestsFailure,
    TResult Function(_FirebaseAuthCredentialFailure value)?
        firebaseAuthCredentialFailure,
    TResult Function(_FirebaseAuthCodeTimeOut value)? authCodeTimeOut,
    required TResult orElse(),
  }) {
    if (authCodeTimeOut != null) {
      return authCodeTimeOut(this);
    }
    return orElse();
  }
}

abstract class _FirebaseAuthCodeTimeOut implements $AuthFailure {
  const factory _FirebaseAuthCodeTimeOut() = _$FirebaseAuthCodeTimeOutImpl;
}
