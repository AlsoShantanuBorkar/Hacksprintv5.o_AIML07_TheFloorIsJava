import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/core/models/chat_model.dart';
import 'package:hacksprint_flutter/core/utils/http_service.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:hacksprint_flutter/core/utils/flutter_tts.dart';
import 'package:hacksprint_flutter/presentation/common/text/app_title.dart';
import 'package:hacksprint_flutter/presentation/common/text/body_text.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';

class ChatBubble extends StatefulWidget {
  final String message;
  final bool isMe;
  final bool isMarkdown;
  final bool isRagPrompt;
  final List<String> links;
  final bool isImage;
  final File? image;
  final LawDetails? laws;
  const ChatBubble(
      {this.isMarkdown = false,
      this.links = const [],
      required this.message,
      required this.isMe,
      required this.isRagPrompt,
      super.key,
      this.isImage = false,
      this.image,
      this.laws});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          widget.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.isMe ? Colors.blue : Colors.grey.shade900,
            borderRadius: BorderRadius.only(
              topRight: const Radius.circular(10),
              topLeft: const Radius.circular(10),
              bottomLeft: widget.isMe
                  ? const Radius.circular(15)
                  : const Radius.circular(0),
              bottomRight: widget.isMe
                  ? const Radius.circular(0)
                  : const Radius.circular(15),
            ),
          ),
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 1.5),
          padding: widget.isImage
              ? const EdgeInsets.all(4)
              : const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: widget.isImage
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(10),
                          topLeft: const Radius.circular(10),
                          bottomLeft: widget.isMe
                              ? const Radius.circular(15)
                              : const Radius.circular(0),
                          bottomRight: widget.isMe
                              ? const Radius.circular(0)
                              : const Radius.circular(15),
                        ),
                        child: Image.file(widget.image!),
                      )
                    ])
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!widget.isRagPrompt)
                      BodyText(
                        isMarkdown: widget.isMarkdown,
                        inline: true,
                        text: widget.message,
                        padding: 0,
                        textVariant: TextVariant.medium,
                        textAlign:
                            widget.isMe ? TextAlign.end : TextAlign.start,
                        color: white,
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (!widget.isMe &&
                        widget.message != "Image uploaded successfully!")
                      ChatBubbleBottomOptions(
                        message: widget.message,
                        links: widget.links,
                        laws: widget.laws,
                      )
                  ],
                ),
        ),
      ],
    );
  }
}

class ChatBubbleBottomOptions extends StatefulWidget {
  const ChatBubbleBottomOptions(
      {super.key, required this.message, required this.links, this.laws});
  final String message;
  final List<String> links;
  final LawDetails? laws;
  @override
  State<ChatBubbleBottomOptions> createState() =>
      _ChatBubbleBottomOptionsState();
}

class _ChatBubbleBottomOptionsState extends State<ChatBubbleBottomOptions> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: AppColors.blue,
            ),
            onPressed: () {
              if (isPlaying) {
                stopSpeaking();
                isPlaying = !isPlaying;
              } else {
                speakText(widget.message);
                isPlaying = !isPlaying;
              }

              setState(
                () {},
              );
            },
            icon: Icon(isPlaying ? Icons.mic_off : Icons.mic, color: white)),
        if (widget.links.isNotEmpty) LinksButton(widget: widget),
        if (widget.laws != null || widget.laws != LawDetails.initial())
          LawInfoButton(widget: widget),
      ],
    );
  }
}

class LinksButton extends StatelessWidget {
  const LinksButton({
    super.key,
    required this.widget,
  });

  final ChatBubbleBottomOptions widget;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: AppColors.blue,
        ),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: AppColors.dark,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        verSpacing_16,
                        Text(
                          "Links",
                          style: ts20.white,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.links.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: GestureDetector(
                                  onTap: () async {
                                    if (await canLaunchUrl(
                                        Uri.parse(widget.links[index]))) {
                                      launchUrl(Uri.parse(widget.links[index]));
                                    }
                                  },
                                  child: Text(
                                    widget.links[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.blue,
                                    ),
                                  ),
                                ),
                              );
                            }),
                        verSpacing_16
                      ],
                    ),
                  ),
                );
              });
        },
        icon: const Icon(Icons.link, color: white));
  }
}

class LawInfoButton extends StatelessWidget {
  const LawInfoButton({
    super.key,
    required this.widget,
  });

  final ChatBubbleBottomOptions widget;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: AppColors.blue,
        ),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: AppColors.dark,
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      verSpacing_8,
                      Text(
                        widget.laws!.section.toLowerCase().contains("section")
                            ? widget.laws!.section
                            : "Section ${widget.laws!.section}",
                        style: ts20.white,
                      ),
                      verSpacing_4,
                      Text(
                        widget.laws!.name,
                        style: ts16.white,
                        textAlign: TextAlign.center,
                      ),
                      verSpacing_4,
                      Text(
                        widget.laws!.description,
                        style: ts16.white,
                        textAlign: TextAlign.justify,
                      ),
                      verSpacing_24,
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(Icons.info_outline, color: white));
  }
}

class Chat extends Equatable {
  final String message;
  final bool isMe;
  final bool isMarkdown;
  final bool isRagPrompt;
  final List<String> links;
  const Chat({
    required this.message,
    required this.isMe,
    required this.isMarkdown,
    required this.isRagPrompt,
    required this.links,
  });

  @override
  List<Object> get props {
    return [
      message,
      isMe,
      isMarkdown,
      isRagPrompt,
      links,
    ];
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll(
      {'message': message},
    );
    result.addAll(
      {'isMe': isMe},
    );
    result.addAll(
      {'isMarkdown': isMarkdown},
    );
    result.addAll(
      {'isRagPrompt': isRagPrompt},
    );
    result.addAll(
      {'links': links},
    );

    return result;
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      message: map['message'] ?? '',
      isMe: map['isMe'] ?? false,
      isMarkdown: map['isMarkdown'] ?? false,
      isRagPrompt: map['isRagPrompt'] ?? false,
      links: List<String>.from(map['links']),
    );
  }

  String toJson() => json.encode(
        toMap(),
      );

  factory Chat.fromJson(String source) => Chat.fromMap(
        json.decode(source),
      );
}
