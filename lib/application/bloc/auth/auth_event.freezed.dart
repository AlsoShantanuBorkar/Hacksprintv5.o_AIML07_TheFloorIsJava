// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpRequested,
    required TResult Function() signOut,
    required TResult Function() userNotFound,
    required TResult Function(User? user) userFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpRequested,
    TResult? Function()? signOut,
    TResult? Function()? userNotFound,
    TResult? Function(User? user)? userFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpRequested,
    TResult Function()? signOut,
    TResult Function()? userNotFound,
    TResult Function(User? user)? userFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpRequested value) signUpRequested,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserFound value) userFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpRequested value)? signUpRequested,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_UserFound value)? userFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpRequested value)? signUpRequested,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserFound value)? userFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpRequestedImplCopyWith<$Res> {
  factory _$$SignUpRequestedImplCopyWith(_$SignUpRequestedImpl value,
          $Res Function(_$SignUpRequestedImpl) then) =
      __$$SignUpRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpRequestedImpl>
    implements _$$SignUpRequestedImplCopyWith<$Res> {
  __$$SignUpRequestedImplCopyWithImpl(
      _$SignUpRequestedImpl _value, $Res Function(_$SignUpRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpRequestedImpl implements _SignUpRequested {
  const _$SignUpRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signUpRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpRequested,
    required TResult Function() signOut,
    required TResult Function() userNotFound,
    required TResult Function(User? user) userFound,
  }) {
    return signUpRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpRequested,
    TResult? Function()? signOut,
    TResult? Function()? userNotFound,
    TResult? Function(User? user)? userFound,
  }) {
    return signUpRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpRequested,
    TResult Function()? signOut,
    TResult Function()? userNotFound,
    TResult Function(User? user)? userFound,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpRequested value) signUpRequested,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserFound value) userFound,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpRequested value)? signUpRequested,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_UserFound value)? userFound,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpRequested value)? signUpRequested,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserFound value)? userFound,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class _SignUpRequested implements AuthEvent {
  const factory _SignUpRequested() = _$SignUpRequestedImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpRequested,
    required TResult Function() signOut,
    required TResult Function() userNotFound,
    required TResult Function(User? user) userFound,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpRequested,
    TResult? Function()? signOut,
    TResult? Function()? userNotFound,
    TResult? Function(User? user)? userFound,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpRequested,
    TResult Function()? signOut,
    TResult Function()? userNotFound,
    TResult Function(User? user)? userFound,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpRequested value) signUpRequested,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserFound value) userFound,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpRequested value)? signUpRequested,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_UserFound value)? userFound,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpRequested value)? signUpRequested,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserFound value)? userFound,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'AuthEvent.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpRequested,
    required TResult Function() signOut,
    required TResult Function() userNotFound,
    required TResult Function(User? user) userFound,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpRequested,
    TResult? Function()? signOut,
    TResult? Function()? userNotFound,
    TResult? Function(User? user)? userFound,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpRequested,
    TResult Function()? signOut,
    TResult Function()? userNotFound,
    TResult Function(User? user)? userFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpRequested value) signUpRequested,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserFound value) userFound,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpRequested value)? signUpRequested,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_UserFound value)? userFound,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpRequested value)? signUpRequested,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserFound value)? userFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements AuthEvent {
  const factory _UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$UserFoundImplCopyWith<$Res> {
  factory _$$UserFoundImplCopyWith(
          _$UserFoundImpl value, $Res Function(_$UserFoundImpl) then) =
      __$$UserFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$UserFoundImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserFoundImpl>
    implements _$$UserFoundImplCopyWith<$Res> {
  __$$UserFoundImplCopyWithImpl(
      _$UserFoundImpl _value, $Res Function(_$UserFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserFoundImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UserFoundImpl implements _UserFound {
  const _$UserFoundImpl({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.userFound(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFoundImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFoundImplCopyWith<_$UserFoundImpl> get copyWith =>
      __$$UserFoundImplCopyWithImpl<_$UserFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpRequested,
    required TResult Function() signOut,
    required TResult Function() userNotFound,
    required TResult Function(User? user) userFound,
  }) {
    return userFound(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpRequested,
    TResult? Function()? signOut,
    TResult? Function()? userNotFound,
    TResult? Function(User? user)? userFound,
  }) {
    return userFound?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpRequested,
    TResult Function()? signOut,
    TResult Function()? userNotFound,
    TResult Function(User? user)? userFound,
    required TResult orElse(),
  }) {
    if (userFound != null) {
      return userFound(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpRequested value) signUpRequested,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserFound value) userFound,
  }) {
    return userFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpRequested value)? signUpRequested,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_UserFound value)? userFound,
  }) {
    return userFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpRequested value)? signUpRequested,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserFound value)? userFound,
    required TResult orElse(),
  }) {
    if (userFound != null) {
      return userFound(this);
    }
    return orElse();
  }
}

abstract class _UserFound implements AuthEvent {
  const factory _UserFound({required final User? user}) = _$UserFoundImpl;

  User? get user;
  @JsonKey(ignore: true)
  _$$UserFoundImplCopyWith<_$UserFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
