// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function($AuthFailure authFailure) auth,
    required TResult Function() cacheFailure,
    required TResult Function() firebaseFailure,
    required TResult Function() commonFailure,
    required TResult Function() networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function($AuthFailure authFailure)? auth,
    TResult? Function()? cacheFailure,
    TResult? Function()? firebaseFailure,
    TResult? Function()? commonFailure,
    TResult? Function()? networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function($AuthFailure authFailure)? auth,
    TResult Function()? cacheFailure,
    TResult Function()? firebaseFailure,
    TResult Function()? commonFailure,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) auth,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(FirebaseFailure value) firebaseFailure,
    required TResult Function(CommonFailure value) commonFailure,
    required TResult Function(NetworkFailure value) networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(FirebaseFailure value)? firebaseFailure,
    TResult? Function(CommonFailure value)? commonFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? auth,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(FirebaseFailure value)? firebaseFailure,
    TResult Function(CommonFailure value)? commonFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({$AuthFailure authFailure});

  $$AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authFailure = null,
  }) {
    return _then(_$AuthFailureImpl(
      authFailure: null == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as $AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $$AuthFailureCopyWith<$Res> get authFailure {
    return $$AuthFailureCopyWith<$Res>(_value.authFailure, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
  }
}

/// @nodoc

class _$AuthFailureImpl with DiagnosticableTreeMixin implements AuthFailure {
  const _$AuthFailureImpl({required this.authFailure});

  @override
  final $AuthFailure authFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.auth(authFailure: $authFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.auth'))
      ..add(DiagnosticsProperty('authFailure', authFailure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function($AuthFailure authFailure) auth,
    required TResult Function() cacheFailure,
    required TResult Function() firebaseFailure,
    required TResult Function() commonFailure,
    required TResult Function() networkFailure,
  }) {
    return auth(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function($AuthFailure authFailure)? auth,
    TResult? Function()? cacheFailure,
    TResult? Function()? firebaseFailure,
    TResult? Function()? commonFailure,
    TResult? Function()? networkFailure,
  }) {
    return auth?.call(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function($AuthFailure authFailure)? auth,
    TResult Function()? cacheFailure,
    TResult Function()? firebaseFailure,
    TResult Function()? commonFailure,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(authFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) auth,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(FirebaseFailure value) firebaseFailure,
    required TResult Function(CommonFailure value) commonFailure,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(FirebaseFailure value)? firebaseFailure,
    TResult? Function(CommonFailure value)? commonFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? auth,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(FirebaseFailure value)? firebaseFailure,
    TResult Function(CommonFailure value)? commonFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure({required final $AuthFailure authFailure}) =
      _$AuthFailureImpl;

  $AuthFailure get authFailure;
  @JsonKey(ignore: true)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheFailureImpl with DiagnosticableTreeMixin implements CacheFailure {
  const _$CacheFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.cacheFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.cacheFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function($AuthFailure authFailure) auth,
    required TResult Function() cacheFailure,
    required TResult Function() firebaseFailure,
    required TResult Function() commonFailure,
    required TResult Function() networkFailure,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function($AuthFailure authFailure)? auth,
    TResult? Function()? cacheFailure,
    TResult? Function()? firebaseFailure,
    TResult? Function()? commonFailure,
    TResult? Function()? networkFailure,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function($AuthFailure authFailure)? auth,
    TResult Function()? cacheFailure,
    TResult Function()? firebaseFailure,
    TResult Function()? commonFailure,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) auth,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(FirebaseFailure value) firebaseFailure,
    required TResult Function(CommonFailure value) commonFailure,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(FirebaseFailure value)? firebaseFailure,
    TResult? Function(CommonFailure value)? commonFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? auth,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(FirebaseFailure value)? firebaseFailure,
    TResult Function(CommonFailure value)? commonFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure() = _$CacheFailureImpl;
}

/// @nodoc
abstract class _$$FirebaseFailureImplCopyWith<$Res> {
  factory _$$FirebaseFailureImplCopyWith(_$FirebaseFailureImpl value,
          $Res Function(_$FirebaseFailureImpl) then) =
      __$$FirebaseFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FirebaseFailureImpl>
    implements _$$FirebaseFailureImplCopyWith<$Res> {
  __$$FirebaseFailureImplCopyWithImpl(
      _$FirebaseFailureImpl _value, $Res Function(_$FirebaseFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirebaseFailureImpl
    with DiagnosticableTreeMixin
    implements FirebaseFailure {
  const _$FirebaseFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.firebaseFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.firebaseFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirebaseFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function($AuthFailure authFailure) auth,
    required TResult Function() cacheFailure,
    required TResult Function() firebaseFailure,
    required TResult Function() commonFailure,
    required TResult Function() networkFailure,
  }) {
    return firebaseFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function($AuthFailure authFailure)? auth,
    TResult? Function()? cacheFailure,
    TResult? Function()? firebaseFailure,
    TResult? Function()? commonFailure,
    TResult? Function()? networkFailure,
  }) {
    return firebaseFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function($AuthFailure authFailure)? auth,
    TResult Function()? cacheFailure,
    TResult Function()? firebaseFailure,
    TResult Function()? commonFailure,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (firebaseFailure != null) {
      return firebaseFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) auth,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(FirebaseFailure value) firebaseFailure,
    required TResult Function(CommonFailure value) commonFailure,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return firebaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(FirebaseFailure value)? firebaseFailure,
    TResult? Function(CommonFailure value)? commonFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
  }) {
    return firebaseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? auth,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(FirebaseFailure value)? firebaseFailure,
    TResult Function(CommonFailure value)? commonFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (firebaseFailure != null) {
      return firebaseFailure(this);
    }
    return orElse();
  }
}

abstract class FirebaseFailure implements Failure {
  const factory FirebaseFailure() = _$FirebaseFailureImpl;
}

/// @nodoc
abstract class _$$CommonFailureImplCopyWith<$Res> {
  factory _$$CommonFailureImplCopyWith(
          _$CommonFailureImpl value, $Res Function(_$CommonFailureImpl) then) =
      __$$CommonFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommonFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CommonFailureImpl>
    implements _$$CommonFailureImplCopyWith<$Res> {
  __$$CommonFailureImplCopyWithImpl(
      _$CommonFailureImpl _value, $Res Function(_$CommonFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommonFailureImpl
    with DiagnosticableTreeMixin
    implements CommonFailure {
  const _$CommonFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.commonFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.commonFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommonFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function($AuthFailure authFailure) auth,
    required TResult Function() cacheFailure,
    required TResult Function() firebaseFailure,
    required TResult Function() commonFailure,
    required TResult Function() networkFailure,
  }) {
    return commonFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function($AuthFailure authFailure)? auth,
    TResult? Function()? cacheFailure,
    TResult? Function()? firebaseFailure,
    TResult? Function()? commonFailure,
    TResult? Function()? networkFailure,
  }) {
    return commonFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function($AuthFailure authFailure)? auth,
    TResult Function()? cacheFailure,
    TResult Function()? firebaseFailure,
    TResult Function()? commonFailure,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (commonFailure != null) {
      return commonFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) auth,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(FirebaseFailure value) firebaseFailure,
    required TResult Function(CommonFailure value) commonFailure,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return commonFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(FirebaseFailure value)? firebaseFailure,
    TResult? Function(CommonFailure value)? commonFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
  }) {
    return commonFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? auth,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(FirebaseFailure value)? firebaseFailure,
    TResult Function(CommonFailure value)? commonFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (commonFailure != null) {
      return commonFailure(this);
    }
    return orElse();
  }
}

abstract class CommonFailure implements Failure {
  const factory CommonFailure() = _$CommonFailureImpl;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkFailureImpl
    with DiagnosticableTreeMixin
    implements NetworkFailure {
  const _$NetworkFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.networkFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.networkFailure'));
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
    required TResult Function($AuthFailure authFailure) auth,
    required TResult Function() cacheFailure,
    required TResult Function() firebaseFailure,
    required TResult Function() commonFailure,
    required TResult Function() networkFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function($AuthFailure authFailure)? auth,
    TResult? Function()? cacheFailure,
    TResult? Function()? firebaseFailure,
    TResult? Function()? commonFailure,
    TResult? Function()? networkFailure,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function($AuthFailure authFailure)? auth,
    TResult Function()? cacheFailure,
    TResult Function()? firebaseFailure,
    TResult Function()? commonFailure,
    TResult Function()? networkFailure,
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
    required TResult Function(AuthFailure value) auth,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(FirebaseFailure value) firebaseFailure,
    required TResult Function(CommonFailure value) commonFailure,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure value)? auth,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(FirebaseFailure value)? firebaseFailure,
    TResult? Function(CommonFailure value)? commonFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? auth,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(FirebaseFailure value)? firebaseFailure,
    TResult Function(CommonFailure value)? commonFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure() = _$NetworkFailureImpl;
}
