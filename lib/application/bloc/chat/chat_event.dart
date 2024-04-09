import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacksprint_flutter/core/models/chat_model.dart';
import 'package:hacksprint_flutter/core/models/conversation_model.dart';

part 'chat_event.freezed.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.newChatFromUser(
      {required String message, required String email}) = _NewChatFromUser;
  const factory ChatEvent.newConversation() = _NewConversation;
  const factory ChatEvent.switchConversation(
      {required ConversationModel conversationModel}) = _SwitchConversation;
  const factory ChatEvent.deleteConversation(
      {required ConversationModel model}) = _DeleteConversation;
  const factory ChatEvent.deleteAllConversations() = _DeleteAllConversation;
  const factory ChatEvent.dataFromDB(
      {required List<ConversationModel> converastions}) = _DataFromDB;

  const factory ChatEvent.uploadImage({required File file}) = _UploadImage;
}
