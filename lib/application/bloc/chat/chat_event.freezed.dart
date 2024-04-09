// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewChatFromUserImplCopyWith<$Res> {
  factory _$$NewChatFromUserImplCopyWith(_$NewChatFromUserImpl value,
          $Res Function(_$NewChatFromUserImpl) then) =
      __$$NewChatFromUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String email});
}

/// @nodoc
class __$$NewChatFromUserImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$NewChatFromUserImpl>
    implements _$$NewChatFromUserImplCopyWith<$Res> {
  __$$NewChatFromUserImplCopyWithImpl(
      _$NewChatFromUserImpl _value, $Res Function(_$NewChatFromUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
  }) {
    return _then(_$NewChatFromUserImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewChatFromUserImpl
    with DiagnosticableTreeMixin
    implements _NewChatFromUser {
  const _$NewChatFromUserImpl({required this.message, required this.email});

  @override
  final String message;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.newChatFromUser(message: $message, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.newChatFromUser'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChatFromUserImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChatFromUserImplCopyWith<_$NewChatFromUserImpl> get copyWith =>
      __$$NewChatFromUserImplCopyWithImpl<_$NewChatFromUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return newChatFromUser(message, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return newChatFromUser?.call(message, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (newChatFromUser != null) {
      return newChatFromUser(message, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return newChatFromUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return newChatFromUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (newChatFromUser != null) {
      return newChatFromUser(this);
    }
    return orElse();
  }
}

abstract class _NewChatFromUser implements ChatEvent {
  const factory _NewChatFromUser(
      {required final String message,
      required final String email}) = _$NewChatFromUserImpl;

  String get message;
  String get email;
  @JsonKey(ignore: true)
  _$$NewChatFromUserImplCopyWith<_$NewChatFromUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewConversationImplCopyWith<$Res> {
  factory _$$NewConversationImplCopyWith(_$NewConversationImpl value,
          $Res Function(_$NewConversationImpl) then) =
      __$$NewConversationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$NewConversationImpl>
    implements _$$NewConversationImplCopyWith<$Res> {
  __$$NewConversationImplCopyWithImpl(
      _$NewConversationImpl _value, $Res Function(_$NewConversationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewConversationImpl
    with DiagnosticableTreeMixin
    implements _NewConversation {
  const _$NewConversationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.newConversation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatEvent.newConversation'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewConversationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return newConversation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return newConversation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (newConversation != null) {
      return newConversation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return newConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return newConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (newConversation != null) {
      return newConversation(this);
    }
    return orElse();
  }
}

abstract class _NewConversation implements ChatEvent {
  const factory _NewConversation() = _$NewConversationImpl;
}

/// @nodoc
abstract class _$$SwitchConversationImplCopyWith<$Res> {
  factory _$$SwitchConversationImplCopyWith(_$SwitchConversationImpl value,
          $Res Function(_$SwitchConversationImpl) then) =
      __$$SwitchConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationModel conversationModel});
}

/// @nodoc
class __$$SwitchConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SwitchConversationImpl>
    implements _$$SwitchConversationImplCopyWith<$Res> {
  __$$SwitchConversationImplCopyWithImpl(_$SwitchConversationImpl _value,
      $Res Function(_$SwitchConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationModel = null,
  }) {
    return _then(_$SwitchConversationImpl(
      conversationModel: null == conversationModel
          ? _value.conversationModel
          : conversationModel // ignore: cast_nullable_to_non_nullable
              as ConversationModel,
    ));
  }
}

/// @nodoc

class _$SwitchConversationImpl
    with DiagnosticableTreeMixin
    implements _SwitchConversation {
  const _$SwitchConversationImpl({required this.conversationModel});

  @override
  final ConversationModel conversationModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.switchConversation(conversationModel: $conversationModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.switchConversation'))
      ..add(DiagnosticsProperty('conversationModel', conversationModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchConversationImpl &&
            (identical(other.conversationModel, conversationModel) ||
                other.conversationModel == conversationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchConversationImplCopyWith<_$SwitchConversationImpl> get copyWith =>
      __$$SwitchConversationImplCopyWithImpl<_$SwitchConversationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return switchConversation(conversationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return switchConversation?.call(conversationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (switchConversation != null) {
      return switchConversation(conversationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return switchConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return switchConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (switchConversation != null) {
      return switchConversation(this);
    }
    return orElse();
  }
}

abstract class _SwitchConversation implements ChatEvent {
  const factory _SwitchConversation(
          {required final ConversationModel conversationModel}) =
      _$SwitchConversationImpl;

  ConversationModel get conversationModel;
  @JsonKey(ignore: true)
  _$$SwitchConversationImplCopyWith<_$SwitchConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteConversationImplCopyWith<$Res> {
  factory _$$DeleteConversationImplCopyWith(_$DeleteConversationImpl value,
          $Res Function(_$DeleteConversationImpl) then) =
      __$$DeleteConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationModel model});
}

/// @nodoc
class __$$DeleteConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteConversationImpl>
    implements _$$DeleteConversationImplCopyWith<$Res> {
  __$$DeleteConversationImplCopyWithImpl(_$DeleteConversationImpl _value,
      $Res Function(_$DeleteConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$DeleteConversationImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ConversationModel,
    ));
  }
}

/// @nodoc

class _$DeleteConversationImpl
    with DiagnosticableTreeMixin
    implements _DeleteConversation {
  const _$DeleteConversationImpl({required this.model});

  @override
  final ConversationModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.deleteConversation(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.deleteConversation'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteConversationImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteConversationImplCopyWith<_$DeleteConversationImpl> get copyWith =>
      __$$DeleteConversationImplCopyWithImpl<_$DeleteConversationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return deleteConversation(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return deleteConversation?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (deleteConversation != null) {
      return deleteConversation(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return deleteConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return deleteConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (deleteConversation != null) {
      return deleteConversation(this);
    }
    return orElse();
  }
}

abstract class _DeleteConversation implements ChatEvent {
  const factory _DeleteConversation({required final ConversationModel model}) =
      _$DeleteConversationImpl;

  ConversationModel get model;
  @JsonKey(ignore: true)
  _$$DeleteConversationImplCopyWith<_$DeleteConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllConversationImplCopyWith<$Res> {
  factory _$$DeleteAllConversationImplCopyWith(
          _$DeleteAllConversationImpl value,
          $Res Function(_$DeleteAllConversationImpl) then) =
      __$$DeleteAllConversationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAllConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteAllConversationImpl>
    implements _$$DeleteAllConversationImplCopyWith<$Res> {
  __$$DeleteAllConversationImplCopyWithImpl(_$DeleteAllConversationImpl _value,
      $Res Function(_$DeleteAllConversationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAllConversationImpl
    with DiagnosticableTreeMixin
    implements _DeleteAllConversation {
  const _$DeleteAllConversationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.deleteAllConversations()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatEvent.deleteAllConversations'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAllConversationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return deleteAllConversations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return deleteAllConversations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (deleteAllConversations != null) {
      return deleteAllConversations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return deleteAllConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return deleteAllConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (deleteAllConversations != null) {
      return deleteAllConversations(this);
    }
    return orElse();
  }
}

abstract class _DeleteAllConversation implements ChatEvent {
  const factory _DeleteAllConversation() = _$DeleteAllConversationImpl;
}

/// @nodoc
abstract class _$$DataFromDBImplCopyWith<$Res> {
  factory _$$DataFromDBImplCopyWith(
          _$DataFromDBImpl value, $Res Function(_$DataFromDBImpl) then) =
      __$$DataFromDBImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationModel> converastions});
}

/// @nodoc
class __$$DataFromDBImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DataFromDBImpl>
    implements _$$DataFromDBImplCopyWith<$Res> {
  __$$DataFromDBImplCopyWithImpl(
      _$DataFromDBImpl _value, $Res Function(_$DataFromDBImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? converastions = null,
  }) {
    return _then(_$DataFromDBImpl(
      converastions: null == converastions
          ? _value._converastions
          : converastions // ignore: cast_nullable_to_non_nullable
              as List<ConversationModel>,
    ));
  }
}

/// @nodoc

class _$DataFromDBImpl with DiagnosticableTreeMixin implements _DataFromDB {
  const _$DataFromDBImpl({required final List<ConversationModel> converastions})
      : _converastions = converastions;

  final List<ConversationModel> _converastions;
  @override
  List<ConversationModel> get converastions {
    if (_converastions is EqualUnmodifiableListView) return _converastions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_converastions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.dataFromDB(converastions: $converastions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.dataFromDB'))
      ..add(DiagnosticsProperty('converastions', converastions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataFromDBImpl &&
            const DeepCollectionEquality()
                .equals(other._converastions, _converastions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_converastions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataFromDBImplCopyWith<_$DataFromDBImpl> get copyWith =>
      __$$DataFromDBImplCopyWithImpl<_$DataFromDBImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return dataFromDB(converastions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return dataFromDB?.call(converastions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (dataFromDB != null) {
      return dataFromDB(converastions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return dataFromDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return dataFromDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (dataFromDB != null) {
      return dataFromDB(this);
    }
    return orElse();
  }
}

abstract class _DataFromDB implements ChatEvent {
  const factory _DataFromDB(
          {required final List<ConversationModel> converastions}) =
      _$DataFromDBImpl;

  List<ConversationModel> get converastions;
  @JsonKey(ignore: true)
  _$$DataFromDBImplCopyWith<_$DataFromDBImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$UploadImageImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl with DiagnosticableTreeMixin implements _UploadImage {
  const _$UploadImageImpl({required this.file});

  @override
  final File file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.uploadImage(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.uploadImage'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String email) newChatFromUser,
    required TResult Function() newConversation,
    required TResult Function(ConversationModel conversationModel)
        switchConversation,
    required TResult Function(ConversationModel model) deleteConversation,
    required TResult Function() deleteAllConversations,
    required TResult Function(List<ConversationModel> converastions) dataFromDB,
    required TResult Function(File file) uploadImage,
  }) {
    return uploadImage(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String email)? newChatFromUser,
    TResult? Function()? newConversation,
    TResult? Function(ConversationModel conversationModel)? switchConversation,
    TResult? Function(ConversationModel model)? deleteConversation,
    TResult? Function()? deleteAllConversations,
    TResult? Function(List<ConversationModel> converastions)? dataFromDB,
    TResult? Function(File file)? uploadImage,
  }) {
    return uploadImage?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String email)? newChatFromUser,
    TResult Function()? newConversation,
    TResult Function(ConversationModel conversationModel)? switchConversation,
    TResult Function(ConversationModel model)? deleteConversation,
    TResult Function()? deleteAllConversations,
    TResult Function(List<ConversationModel> converastions)? dataFromDB,
    TResult Function(File file)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChatFromUser value) newChatFromUser,
    required TResult Function(_NewConversation value) newConversation,
    required TResult Function(_SwitchConversation value) switchConversation,
    required TResult Function(_DeleteConversation value) deleteConversation,
    required TResult Function(_DeleteAllConversation value)
        deleteAllConversations,
    required TResult Function(_DataFromDB value) dataFromDB,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChatFromUser value)? newChatFromUser,
    TResult? Function(_NewConversation value)? newConversation,
    TResult? Function(_SwitchConversation value)? switchConversation,
    TResult? Function(_DeleteConversation value)? deleteConversation,
    TResult? Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult? Function(_DataFromDB value)? dataFromDB,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChatFromUser value)? newChatFromUser,
    TResult Function(_NewConversation value)? newConversation,
    TResult Function(_SwitchConversation value)? switchConversation,
    TResult Function(_DeleteConversation value)? deleteConversation,
    TResult Function(_DeleteAllConversation value)? deleteAllConversations,
    TResult Function(_DataFromDB value)? dataFromDB,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ChatEvent {
  const factory _UploadImage({required final File file}) = _$UploadImageImpl;

  File get file;
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
