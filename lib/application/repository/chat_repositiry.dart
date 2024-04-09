import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hacksprint_flutter/core/failure/failures.dart';
import 'package:hacksprint_flutter/core/models/chat_model.dart';
import 'package:hacksprint_flutter/core/models/conversation_model.dart';
import 'package:hacksprint_flutter/core/utils/logger.dart';
import 'package:hacksprint_flutter/main.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatRepository {
  ChatRepository();

  Future<Either<Failure, List<ChatModel>>> getChats(
      String conversationId) async {
    try {
      List<ChatModel> messages =
          objectbox.getAllChatsByConversationId(conversationId);

      return Right(messages);
    } catch (e) {
      Log.error(e.toString());
      return const Left(Failure.commonFailure());
    }
  }

  Future<void> putChat(String conversationId, ChatModel chatModel) async {
    try {
      log("DATASOURCE CHAT ID");
      log(chatModel.conversationId);
      objectbox.putNewChat(chatModel);
    } catch (e) {
      Log.error(e.toString());
    }
  }

  Future<Either<Failure, List<ConversationModel>>> getConversations() async {
    try {
      log("here");
      List<ConversationModel> conversations = objectbox.getConversations();
      return Right(conversations);
    } catch (e) {
      Log.error(e.toString());
      return const Left(Failure.commonFailure());
    }
  }

  Future<void> putConversation(ConversationModel conversationModel) async {
    try {
      objectbox.putConversation(conversationModel);
    } catch (e) {
      Log.error(e.toString());
    }
  }

  Future<void> deleteAllConversations() async {
    try {
      objectbox.deleteAllConversations();
    } catch (e) {
      Log.error(e.toString());
    }
  }
}
