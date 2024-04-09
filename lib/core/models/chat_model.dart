// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ChatModel extends Equatable {
  @Id()
  int id = 0;

  final String messageId;
  final String userEmail;
  final String message;
  final bool isMe;
  final bool isMarkdown;
  final bool isRagPrompt;
  final List<String> links;
  final bool isImage;
  final String? imagePath;
  @Transient()
  LawDetails? laws;

  @Property(type: PropertyType.date)
  final DateTime creationDatetime;
  final String conversationId;
  ChatModel({
    required this.userEmail,
    required this.messageId,
    required this.message,
    required this.isMe,
    required this.isMarkdown,
    required this.isRagPrompt,
    this.links = const [],
    this.isImage = false,
    this.imagePath,
    this.laws,
    required this.creationDatetime,
    required this.conversationId,
  });

  String get dbLawDetails =>
      laws == null ? LawDetails.initial().toJson() : laws!.toJson();
  set dbLawDetails(String value) => laws = LawDetails.fromJson(value);

  @override
  List<Object> get props {
    return [
      id,
      userEmail,
      messageId,
      message,
      isMe,
      isMarkdown,
      isRagPrompt,
      links,
      isImage,
      creationDatetime,
      conversationId,
    ];
  }

  @override
  String toString() {
    return 'ChatModel(id: $id, messageId: $messageId, message: $message, isMe: $isMe, isMarkdown: $isMarkdown, isRagPrompt: $isRagPrompt, links: $links, isImage: $isImage, imagePath: $imagePath, laws: $laws, creationDatetime: $creationDatetime, conversationId: $conversationId)';
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'messageId': messageId});
    result.addAll({'message': message});
    result.addAll({'isMe': isMe});
    result.addAll({'isMarkdown': isMarkdown});
    result.addAll({'isRagPrompt': isRagPrompt});
    result.addAll({'links': links});
    result.addAll({'isImage': isImage});

    if (laws != null) {
      result.addAll({'laws': laws!.toMap()});
    }
    result
        .addAll({'creationDatetime': creationDatetime.millisecondsSinceEpoch});
    result.addAll({'conversationId': conversationId});

    return result;
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      userEmail: map["userEmail"] ?? "",
      messageId: map['messageId'] ?? '',
      message: map['message'] ?? '',
      isMe: map['isMe'] ?? false,
      isMarkdown: map['isMarkdown'] ?? false,
      isRagPrompt: map['isRagPrompt'] ?? false,
      links: List<String>.from(map['links']),
      isImage: map['isImage'] ?? false,
      laws: map['laws'] != null ? LawDetails.fromMap(map['laws']) : null,
      creationDatetime:
          DateTime.fromMillisecondsSinceEpoch(map['creationDatetime']),
      conversationId: map['conversationId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source));

  ChatModel copyWith({
    int? id,
    String? messageId,
    String? message,
    bool? isMe,
    bool? isMarkdown,
    bool? isRagPrompt,
    List<String>? links,
    bool? isImage,
    String? imagePath,
    LawDetails? laws,
    DateTime? creationDatetime,
    String? conversationId,
    String? userEmail,
  }) {
    return ChatModel(
      userEmail: userEmail ?? this.userEmail,
      messageId: messageId ?? this.messageId,
      message: message ?? this.message,
      isMe: isMe ?? this.isMe,
      isMarkdown: isMarkdown ?? this.isMarkdown,
      isRagPrompt: isRagPrompt ?? this.isRagPrompt,
      links: links ?? this.links,
      isImage: isImage ?? this.isImage,
      imagePath: imagePath ?? this.imagePath,
      laws: laws ?? this.laws,
      creationDatetime: creationDatetime ?? this.creationDatetime,
      conversationId: conversationId ?? this.conversationId,
    );
  }
}

@Entity()
class LawDetails {
  @Id()
  int id = 0;

  final String section;
  final String name;
  final String description;

  LawDetails(
      {required this.section, required this.name, required this.description});

  factory LawDetails.initial() =>
      LawDetails(section: "", name: "", description: "");

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll(
      {'section': section},
    );
    result.addAll(
      {'name': name},
    );
    result.addAll(
      {'description': description},
    );

    return result;
  }

  factory LawDetails.fromMap(Map<String, dynamic> map) {
    return LawDetails(
      section: map['section'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LawDetails.fromJson(String source) =>
      LawDetails.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LawDetails &&
        other.id == id &&
        other.section == section &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        section.hashCode ^
        name.hashCode ^
        description.hashCode;
  }
}
