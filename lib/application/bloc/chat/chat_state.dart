import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:hacksprint_flutter/core/models/chat_model.dart';
import 'package:hacksprint_flutter/core/models/conversation_model.dart';

abstract class ChatStateTemplate extends Equatable {}

class ChatState extends ChatStateTemplate {
  final List<ChatModel> chats;
  final List<ConversationModel> conversations;
  final bool isLoading;
  final ConversationModel currentConversation;
  final List<ImageData> imageData;
  final bool isImageUploading;
  ChatState({
    required this.chats,
    required this.conversations,
    required this.isLoading,
    required this.currentConversation,
    required this.imageData,
    required this.isImageUploading,
  });

  factory ChatState.initial() => ChatState(
      chats: const [],
      conversations: const [],
      isLoading: false,
      currentConversation: ConversationModel.initial(),
      imageData: const <ImageData>[],
      isImageUploading: false);

  @override
  List<Object> get props => [
        chats,
        conversations,
        isLoading,
        currentConversation,
        isImageUploading,
        imageData
      ];

  @override
  String toString() {
    return 'ChatState(chats: $chats, conversations: $conversations, isLoading: $isLoading, currentConversation: $currentConversation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatState &&
        listEquals(other.chats, chats) &&
        listEquals(other.conversations, conversations) &&
        other.isLoading == isLoading &&
        other.currentConversation == currentConversation &&
        isImageUploading == other.isImageUploading;
  }

  @override
  int get hashCode {
    return chats.hashCode ^
        conversations.hashCode ^
        isLoading.hashCode ^
        currentConversation.hashCode ^
        isImageUploading.hashCode ^
        imageData.hashCode;
  }

  ChatState copyWith(
      {List<ChatModel>? chats,
      List<ConversationModel>? conversations,
      bool? isLoading,
      ConversationModel? currentConversation,
      List<ImageData>? imageData,
      bool? isImageUploading}) {
    return ChatState(
        chats: chats ?? this.chats,
        conversations: conversations ?? this.conversations,
        isLoading: isLoading ?? this.isLoading,
        currentConversation: currentConversation ?? this.currentConversation,
        imageData: imageData ?? this.imageData,
        isImageUploading: isImageUploading ?? this.isImageUploading);
  }
}

class ImageData extends Equatable {
  final String imageText;
  final DateTime updatedOn;
  final String conversationId;
  const ImageData({
    required this.imageText,
    required this.updatedOn,
    required this.conversationId,
  });

  @override
  List<Object> get props => [imageText, updatedOn, conversationId];

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imageText': imageText});
    result.addAll({'updatedOn': updatedOn.millisecondsSinceEpoch});
    result.addAll({'conversationId': conversationId});

    return result;
  }

  factory ImageData.fromMap(Map<String, dynamic> map) {
    return ImageData(
      imageText: map['imageText'] ?? '',
      updatedOn: DateTime.fromMillisecondsSinceEpoch(map['updatedOn']),
      conversationId: map['conversationId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageData.fromJson(String source) =>
      ImageData.fromMap(json.decode(source));

  @override
  String toString() =>
      'ImageData(imageText: $imageText, updatedOn: $updatedOn, conversationId: $conversationId)';

  ImageData copyWith({
    String? imageText,
    DateTime? updatedOn,
    String? conversationId,
  }) {
    return ImageData(
      imageText: imageText ?? this.imageText,
      updatedOn: updatedOn ?? this.updatedOn,
      conversationId: conversationId ?? this.conversationId,
    );
  }
}
