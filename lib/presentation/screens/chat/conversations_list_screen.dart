import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_event.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_state.dart';
import 'package:hacksprint_flutter/core/utils/format_helper.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';
import 'package:hacksprint_flutter/presentation/common/utils/buttons.dart';

class ConversationListScreen extends StatefulWidget {
  const ConversationListScreen({super.key});

  @override
  State<ConversationListScreen> createState() => _ConversationListScreenState();
}

class _ConversationListScreenState extends State<ConversationListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.dark,
        appBar: AppBar(
            iconTheme: const IconThemeData(color: white),
            backgroundColor: AppColors.dark,
            scrolledUnderElevation: 0,
            title: Text(
              "All conversations",
              style: ts27.white,
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              verSpacing_16,
              DottedBorder(
                  strokeWidth: 2,
                  radius: const Radius.circular(20),
                  color: AppColors.blue,
                  dashPattern: const [10, 10],
                  borderType: BorderType.RRect,
                  child: GestureDetector(
                    onTap: () {
                      context
                          .read<ChatBloc>()
                          .add(const ChatEvent.newConversation());
                    },
                    child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * .9,
                        child: Text(
                          "New Chat ",
                          style: ts18.white,
                        )),
                  )),
              verSpacing_16,
              DottedBorder(
                strokeWidth: 2,
                radius: const Radius.circular(20),
                color: AppColors.red,
                dashPattern: const [10, 10],
                borderType: BorderType.RRect,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: white,
                            surfaceTintColor: white,
                            icon: const Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                              size: 50,
                            ),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Are you sure you want to delete all existing conversations?",
                                  style: ts16.dark,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "This action is irreversible!",
                                  style: ts18.dark.bold,
                                  textAlign: TextAlign.center,
                                ),
                                verSpacing_4,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    PrimaryButton(
                                      onPressed: () {
                                        context.read<ChatBloc>().add(
                                            const ChatEvent
                                                .deleteAllConversations());

                                        Navigator.pop(context);
                                      },
                                      label: "Confirm",
                                      textStyle: ts18.white,
                                      color: Colors.red,
                                    ),
                                    PrimaryButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      label: "Cancel",
                                      textStyle: ts18.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Delete All",
                          style: ts18.copyWith(color: Colors.red),
                        ),
                        const Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              verSpacing_4,
              BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: state.conversations.length,
                    itemBuilder: (context, index) => ListTile(
                      onTap: () {
                        context.read<ChatBloc>().add(
                            ChatEvent.switchConversation(
                                conversationModel: state.conversations[index]));
                      },
                      title: Text(
                        state.conversations[index].name,
                        style: ts18.white,
                      ),
                      subtitle: Text(
                        state.conversations[index].creationDateTime
                            .formatDate(),
                        style: ts14.white,
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
        ));
  }
}
