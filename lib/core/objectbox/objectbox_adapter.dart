import 'dart:developer';
import 'dart:io';

import 'package:hacksprint_flutter/core/models/chat_model.dart';
import 'package:hacksprint_flutter/core/models/conversation_model.dart';
import 'package:hacksprint_flutter/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';

/// Provides access to the ObjectBox Store throughout the app.
///
/// Create this in the apps main function.
class ObjectBoxAdapter {
  late final Store store;

  late Box<ConversationModel> Conversations;

  late Box<ChatModel> chats;

  ObjectBoxAdapter._create(this.store) {
    Conversations = Box<ConversationModel>(store);
    chats = Box<ChatModel>(store);
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBoxAdapter> create() async {
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    Directory path = Platform.isIOS
        ? await getApplicationSupportDirectory()
        : await getApplicationDocumentsDirectory();
    // Database database;

    path = await Directory("${path.path}/store").create(recursive: true);
    // final Directory path = await Directory(path).create(recursive: true);

    Store store;
    log("Store is open ${Store.isOpen(path.path)}");

    if (Store.isOpen(path.path)) {
      log("Objectbox attached in create method");
      store = Store.attach(getObjectBoxModel(), path.path);
    } else {
      log("Objectbox created in create method");

      store = Store(getObjectBoxModel(), directory: path.path);
    }
    return ObjectBoxAdapter._create(store);
  }

  static Future<ObjectBoxAdapter> createWithPath(String path) async {
    Store store;
    log("Store is open ${Store.isOpen(path)}");

    if (Store.isOpen(path)) {
      log("Objectbox attached in create method");
      store = Store.attach(getObjectBoxModel(), path);
    } else {
      log("Objectbox created in create method");

      store = Store(getObjectBoxModel(), directory: path);
    }
    return ObjectBoxAdapter._create(store);
  }

  static Future<ObjectBoxAdapter> attach() async {
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    Directory path = Platform.isIOS
        ? await getApplicationSupportDirectory()
        : await getApplicationDocumentsDirectory();

    path = await Directory("${path.path}/store").create(recursive: true);
    Store store;
    log("Store is open ${Store.isOpen(path.path)}");
    // try {
    if (Store.isOpen(path.path)) {
      log("Objectbox attched in attach method");

      store = Store.attach(getObjectBoxModel(), path.path);
      return ObjectBoxAdapter._create(store);
    } else {
      log("Objectbox created in attach method");

      store = Store(getObjectBoxModel(), directory: path.path);
      return ObjectBoxAdapter._create(store);
    }
  }

  List<ChatModel> getAllChatsByConversationId(String conversationId) {
    Query query =
        chats.query(ChatModel_.conversationId.equals(conversationId)).build();

    List fromObjectbox = query.find();

    return fromObjectbox as List<ChatModel>;
  }

  List<ConversationModel> getConversations() {
    return Conversations.getAll();
  }

  void putNewChat(ChatModel chat) {
    chats.put(chat, mode: PutMode.put);
  }

  void putConversation(ConversationModel chat) {
    if (chat.id != 0) {
      if (Conversations.contains(chat.id)) {
        Conversations.remove(chat.id);
      }
    }
    Conversations.put(chat, mode: PutMode.put);
  }

  void deleteAllConversations() {
    log("deleting all");
    Conversations.removeAll();
    chats.removeAll();
  }
}
