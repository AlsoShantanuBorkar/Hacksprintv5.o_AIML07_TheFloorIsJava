import 'dart:io';
import 'dart:math' as math;
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_state.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_event.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_state.dart';
import 'package:hacksprint_flutter/core/utils/http_service.dart';
import 'package:hacksprint_flutter/main.dart';
import 'package:hacksprint_flutter/presentation/common/app_drawer.dart';
import 'package:hacksprint_flutter/presentation/common/text/app_title.dart';
import 'package:hacksprint_flutter/presentation/common/text/body_text.dart';
import 'package:hacksprint_flutter/presentation/common/text/gradient_text.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';
import 'package:hacksprint_flutter/presentation/screens/chat/widgets/chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  late final TextEditingController _textEditingController;

  late final FocusNode focusNode;
  bool isLoading = false;
  bool isImageUploading = false;
  late final ScrollController scrollController;
  @override
  void initState() {
    scrollController = ScrollController();
    _textEditingController = TextEditingController();
    focusNode = FocusNode();
    // http.api.get("${serverURL}reset_server");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: AppColors.dark,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: white),
        backgroundColor: AppColors.dark,
        scrolledUnderElevation: 0,
        title: Text(
          "Lawyer Up",
          style: ts27.white,
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, authState) {},
        builder: (context, authState) {
          return BlocConsumer<ChatBloc, ChatState>(
            listener: (context, chatState) {
              try {
                scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    curve: Curves.easeInOutCubic,
                    duration: const Duration(milliseconds: 500));
              } catch (e) {
                //
              }
            },
            builder: (context, chatState) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    ChatList(scrollController: scrollController),
                    chatState.chats.isEmpty
                        ? const QuickPrompts()
                        : const SizedBox.shrink(),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      height: MediaQuery.of(context).size.height,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                          backgroundColor: Colors.grey.shade900,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8))),
                                      onPressed: () async {
                                        await FilePicker.platform
                                            .pickFiles(
                                          type: FileType.image,
                                          allowMultiple: false,
                                        )
                                            .then(
                                          (result) {
                                            if (result != null) {
                                              File file = File(
                                                  result.files.first.path!);

                                              context.read<ChatBloc>().add(
                                                    ChatEvent.uploadImage(
                                                      file: file,
                                                    ),
                                                  );
                                            }
                                          },
                                        );
                                      },
                                      icon: Icon(
                                        Icons.upload,
                                        color: AppColors.blue,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomTextField(
                                      focusNode: focusNode,
                                      textEditingController:
                                          _textEditingController),
                                  verSpacing_24,
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                          backgroundColor: Colors.grey.shade900,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8))),
                                      icon: Transform.rotate(
                                        angle: -30 * math.pi / 180,
                                        child: Icon(
                                          Icons.send,
                                          size: 30,
                                          color: AppColors.blue,
                                        ),
                                      ),
                                      onPressed: () {
                                        if (_textEditingController
                                            .text.isNotEmpty) {
                                          context.read<ChatBloc>().add(
                                                ChatEvent.newChatFromUser(
                                                  message:
                                                      _textEditingController
                                                          .text,
                                                  email:
                                                      "authState.user!.email!",
                                                ),
                                              );

                                          _textEditingController.clear();
                                          setState(() {});
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (chatState.isLoading || chatState.isImageUploading)
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black.withOpacity(.6),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppTitle(
                                textAlign: TextAlign.center,
                                text: chatState.isImageUploading
                                    ? "Uploading Image"
                                    : "Generating Response ...",
                                textVariant: TextVariant.medium,
                                weightVariant: WeightVariant.normal,
                                color: white,
                              ),
                              CircularProgressIndicator(
                                color: AppColors.blue,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<Response> uploadImage(File file) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });
    Response response =
        await http.api.post("${serverURL}upload", data: formData);
    return response;
  }
}

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, chatState) {
          return Column(
            children: [
              ...List.generate(
                chatState.chats.length,
                (index) => ChatBubble(
                  message: chatState.chats[index].message,
                  isMe: chatState.chats[index].isMe,
                  links: chatState.chats[index].links,
                  isRagPrompt: chatState.chats[index].isRagPrompt,
                  laws: chatState.chats[index].laws,
                  isImage: chatState.chats[index].isImage,
                  isMarkdown: chatState.chats[index].isMarkdown,
                  image: chatState.chats[index].imagePath != null
                      ? File(chatState.chats[index].imagePath!)
                      : null,
                ),
              ),
              verSpacing_56,
              verSpacing_56,
            ],
          );
        },
      ),
    );
  }
}

class QuickPrompts extends StatelessWidget {
  const QuickPrompts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientText(
              "Quick Prompts",
              style: ts24,
              gradient: const LinearGradient(
                colors: [Colors.red, Colors.blue],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  // generate a random index based on the list length
                  // and use it to retrieve the element
                  String element = questions[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<ChatBloc>().add(
                              ChatEvent.newChatFromUser(
                                message: element,
                                email: " authState.user!.email!",
                              ),
                            );
                      },
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        width: MediaQuery.of(context).size.width * .8,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: white),
                            borderRadius: BorderRadius.circular(4)),
                        child: BodyText(
                          isMarkdown: false,
                          inline: true,
                          text: element,
                          padding: 0,
                          textVariant: TextVariant.medium,
                          color: white,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.focusNode,
      required this.textEditingController});
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 300.0, minHeight: 60),
      width: MediaQuery.of(context).size.width * .8,
      child: TextFormField(
        maxLines: null,
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        style: const TextStyle(color: white),
        controller: textEditingController,
        cursorColor: white,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade900,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: white),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: white),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: white),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: white),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: white),
          ),
          hintText: "Enter Message",
          hintStyle: const TextStyle(color: white),
        ),
      ),
    );
  }
}

List<String> criminalQuestions = [
  "What are the legal consequences of shoplifting in a retail store?",
  "Is it possible to get a DUI charge expunged from my record?",
  "What is the difference between assault and battery charges?",
  "How do I file a restraining order against someone who is threatening me?",
  "What should I do if I'm falsely accused of a crime I didn't commit?",
];

List<String> propertyQuestions = [
  "What steps should I take to dispute a wrongful eviction notice?",
  "How can I transfer property ownership after the death of a family member?",
  "What are the legal implications of a boundary dispute with my neighbor?",
  "Can I break my lease agreement if my landlord fails to make necessary repairs?",
  "Is it legal for my homeowner's association to restrict me from altering my home's exterior?",
];

List<String> familyQuestions = [
  "What are my rights to child custody after a divorce?",
  "How do I file for child support?",
  "What is the process for adopting a child within the chatState?",
  "Is it possible to modify a spousal support agreement?",
  "How can I protect my assets before getting married?",
];

List<String> laboutLaw = [
  "What constitutes wrongful termination from my job?",
  "Am I entitled to overtime pay if I work more than 40 hours a week?",
  "How do I report workplace discrimination or harassment?",
  "What are the legal requirements for a workplace to be considered safe?",
  "Can my employer force me to work without scheduled breaks?",
];

List<String> questions = [
  "Can I file a complaint against someone who is threatening me over the phone?",
  "How can I challenge a property auction that I believe was conducted unfairly?",
  "What's the process for filing for divorce if both parties agree?",
  "Can I challenge a demotion that I feel was unjustified?",
];
