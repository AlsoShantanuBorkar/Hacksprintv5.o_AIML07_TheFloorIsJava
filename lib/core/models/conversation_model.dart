// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ConversationModel extends Equatable {
  @Id()
  int id = 0;

  final String name;
  final String conversationId;
  @Property(type: PropertyType.date)
  final DateTime creationDateTime;
  @Property(type: PropertyType.date)
  final DateTime updatedOn;

  ConversationModel({
    required this.name,
    required this.conversationId,
    required this.creationDateTime,
    required this.updatedOn,
  });

  ConversationModel copyWith({
    String? name,
    String? conversationId,
    DateTime? creationDateTime,
    DateTime? updatedOn,
  }) {
    return ConversationModel(
      name: name ?? this.name,
      conversationId: conversationId ?? this.conversationId,
      creationDateTime: creationDateTime ?? this.creationDateTime,
      updatedOn: updatedOn ?? this.updatedOn,
    );
  }

  factory ConversationModel.initial() => ConversationModel(
        name: "",
        conversationId: "",
        creationDateTime: DateTime(2024),
        updatedOn: DateTime(2024),
      );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'conversationId': conversationId});
    result
        .addAll({'creationDateTime': creationDateTime.millisecondsSinceEpoch});
    result.addAll({'updatedOn': updatedOn.millisecondsSinceEpoch});

    return result;
  }

  factory ConversationModel.fromMap(Map<String, dynamic> map) {
    return ConversationModel(
      name: map['name'] ?? '',
      conversationId: map['conversationId'] ?? '',
      creationDateTime:
          DateTime.fromMillisecondsSinceEpoch(map['creationDateTime']),
      updatedOn: DateTime.fromMillisecondsSinceEpoch(map['updatedOn']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ConversationModel.fromJson(String source) =>
      ConversationModel.fromMap(json.decode(source));

  @override
  List<Object> get props {
    return [
      id,
      name,
      conversationId,
      creationDateTime,
      updatedOn,
    ];
  }

  @override
  String toString() {
    return 'ConversationModel(id: $id, name: $name, conversationId: $conversationId, creationDateTime: $creationDateTime, updatedOn: $updatedOn)';
  }
}
