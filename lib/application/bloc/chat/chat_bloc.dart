import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_event.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_state.dart';
import 'package:hacksprint_flutter/application/repository/chat_repositiry.dart';
import 'package:hacksprint_flutter/core/failure/failures.dart';
import 'package:hacksprint_flutter/core/models/chat_model.dart';
import 'package:hacksprint_flutter/core/models/conversation_model.dart';
import 'package:hacksprint_flutter/core/utils/http_service.dart';
import 'package:hacksprint_flutter/core/utils/logger.dart';
import 'package:hacksprint_flutter/main.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;

  ChatBloc(this.chatRepository) : super(ChatState.initial()) {
    chatRepository.getConversations().then(
          (value) => value.fold(
            (l) => null,
            (r) => r.isNotEmpty
                ? add(ChatEvent.dataFromDB(converastions: r))
                : null,
          ),
        );
    on<ChatEvent>(
      (event, emit) async {
        await event.when<FutureOr>(
          dataFromDB: (converastions) async {
            Either<Failure, List<ChatModel>> response = await chatRepository
                .getChats(converastions.last.conversationId);
            Log.error(response);
            response.fold(
              (l) => emit(
                state.copyWith(
                  currentConversation: converastions.last,
                  conversations: converastions,
                ),
              ),
              (r) => emit(
                state.copyWith(
                  chats: r,
                  currentConversation: converastions.last,
                  conversations: converastions,
                ),
              ),
            );
          },
          deleteAllConversations: () async {
            await chatRepository.deleteAllConversations();
            emit(state.copyWith(chats: [], conversations: []));
            newConversationHandler(emit);
          },
          newChatFromUser: (String message, String email) async =>
              await newChatFromUserHandler(message, email, emit),
          newConversation: () => newConversationHandler(emit),
          switchConversation: (ConversationModel conversationModel) async =>
              await switchConversationHandler(conversationModel, emit),
          deleteConversation: (ConversationModel conversationModel) {},
          uploadImage: (File file) async {
            String fileName = file.path.split('/').last;
            emit(state.copyWith(isImageUploading: true));
            FormData formData = FormData.fromMap({
              "file":
                  await MultipartFile.fromFile(file.path, filename: fileName),
            });
            Response response =
                await http.api.post("${serverURL}upload", data: formData);
            String imageText = response.data["message"];

            emit(
              state.copyWith(imageData: [
                ...state.imageData,
                ImageData(
                    imageText: imageText,
                    updatedOn: DateTime.now(),
                    conversationId: state.currentConversation.conversationId)
              ], isImageUploading: false),
            );
            developer.log(state.imageData.length.toString());
          },
        );
      },
    );
  }

  Future<void> switchConversationHandler(
      ConversationModel model, Emitter<ChatState> emit) async {
    List<ConversationModel> conversations = [];
    conversations.addAll(state.conversations);
    int index = conversations.indexWhere(
      (element) => element.conversationId == model.conversationId,
    );

    if (index != -1) {
      conversations.removeAt(index);
      conversations.add(model);
    }

    emit(state.copyWith(currentConversation: model));

    await chatRepository.putConversation(model);
    await chatRepository.getChats(model.conversationId).then(
          (value) => value.fold(
            (l) => null,
            (r) => {
              emit(state.copyWith(
                chats: r,
                currentConversation: model,
              ))
            },
          ),
        );
  }

  void newConversationHandler(Emitter<ChatState> emit) {
    int conversationNumber = state.conversations.length + 1;
    ConversationModel newConversationModel = ConversationModel(
      name: "Chat $conversationNumber",
      conversationId: const Uuid().v4(),
      creationDateTime: DateTime.now(),
      updatedOn: DateTime.now(),
    );
    chatRepository.putConversation(newConversationModel);
    emit(
      state.copyWith(
        currentConversation: newConversationModel,
        conversations: [...state.conversations, newConversationModel],
        chats: [],
      ),
    );
  }

  Future<void> newChatFromUserHandler(
      String message, String email, Emitter<ChatState> emit) async {
    if (state.currentConversation == ConversationModel.initial()) {
      add(
        const ChatEvent.newConversation(),
      );
      developer.log("here");
    }
    ChatModel errorModel = ChatModel(
      message: "An error occured please try again",
      isMe: false,
      isMarkdown: true,
      isRagPrompt: false,
      userEmail: email,
      messageId: const Uuid().v4(),
      conversationId: state.currentConversation.conversationId,
      creationDatetime: DateTime.now(),
    );

    ChatModel chatModel = ChatModel(
      userEmail: email,
      messageId: const Uuid().v4(),
      message: message,
      isMe: true,
      isMarkdown: false,
      isRagPrompt: false,
      creationDatetime: DateTime.now(),
      conversationId: state.currentConversation.conversationId,
    );
    chatRepository.putChat(
      chatModel.conversationId,
      chatModel,
    );
    List<ChatModel> chats = [];
    chats.addAll(state.chats);
    chats.add(chatModel);

    Uri uri = Uri.parse(
      "${serverURL}generate_response",
    );
    Map<String, dynamic> body = {};
    body.addAll({"query": message});
    body.addAll({"imageText": ""});
    List<Map<String, dynamic>> history = [];

    developer.log(state.chats.toString());
    if (state.chats.isNotEmpty) {
      for (int i = 0; i < state.chats.length; i++) {
        if (history.length >= 5) break;
        if (!history.asMap().containsKey(i ~/ 2)) {
          history.add(
            {},
          );
        }
        if (state.chats[i].isMe) {
          history[i ~/ 2].addAll(
            {"user": state.chats[i].message},
          );
        } else {
          history[i ~/ 2].addAll(
            {"assistant": state.chats[i].message},
          );
        }
      }
    }
    emit(
      state.copyWith(chats: chats),
    );
    body.addAll(
      {"history": history},
    );

    List<ImageData> imageDataList = [];
    imageDataList.addAll(state.imageData.where((element) =>
        element.conversationId == state.currentConversation.conversationId));
    if (imageDataList.isNotEmpty) {
      body.addAll({"imageText": imageDataList.last.imageText});
    }
    emit(
      state.copyWith(isLoading: true),
    );
    developer.log(jsonEncode(body));
    await http.api
        .postUri(
      uri,
      data: jsonEncode(body),
    )
        .then(
      (value) {
        try {
          developer.log(
            value.toString(),
          );

          if (value.data["type"] != "ERROR_OUTPUT") {
            ChatModel fromServer = ChatModel(
              messageId: const Uuid().v4(),
              isImage: false,
              creationDatetime: DateTime.now(),
              conversationId: state.currentConversation.conversationId,
              isMarkdown: (value.data["message"] as String).contains("*"),
              userEmail: email,
              message: value.data["type"] == "RAG_PROMPT"
                  ? ""
                  : value.data["message"],
              isMe: false,
              isRagPrompt: value.data["type"] == "RAG_PROMPT",
              links: value.data["links"] != null
                  ? (value.data["links"] as List)
                      .map((e) => e.toString())
                      .toList()
                  : [],
              laws: LawDetails.fromMap(value.data["laws"]),
            );

            emit(
              state.copyWith(chats: [
                ...state.chats,
                fromServer,
              ]),
            );

            emit(
              state.copyWith(isLoading: false),
            );
            chatRepository.putChat(
              chatModel.conversationId,
              fromServer,
            );
          } else {
            emit(
              state.copyWith(
                  chats: [...state.chats, errorModel], isLoading: false),
            );
          }
        } catch (e) {
          developer.log(
            e.toString(),
          );
          emit(
            state.copyWith(
                chats: [...state.chats, errorModel], isLoading: false),
          );
        }
      },
    );
  }
}
