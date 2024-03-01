import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/core/utils/flutter_tts.dart';
import 'package:hacksprint_flutter/presentation/common/text/body_text.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatBubble extends StatefulWidget {
  final String message;
  final bool isMe;
  final bool isMarkdown;
  final bool isRagPrompt;
  final List<String> links;
  final bool isImage;
  final File? image;
  const ChatBubble({
    this.isMarkdown = false,
    this.links = const [],
    required this.message,
    required this.isMe,
    required this.isRagPrompt,
    super.key,
    this.isImage = false,
    this.image,
  });

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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(
            mainAxisAlignment:
                widget.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: widget.isImage
                ? [Image.file(widget.image!)]
                : [
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
                    if (widget.isRagPrompt && widget.links.isNotEmpty)
                      Column(
                        children: [
                          BodyText(
                            isMarkdown: false,
                            inline: true,
                            text:
                                "Here are some links that you might find useful!",
                            padding: 0,
                            textVariant: TextVariant.medium,
                            textAlign:
                                widget.isMe ? TextAlign.end : TextAlign.start,
                            color: white,
                          ),
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: widget.links.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      launchUrl(Uri.parse(widget.links[index]));
                                    },
                                    child: BodyText(
                                      text: widget.links[index],
                                      textVariant: TextVariant.small,
                                      color: AppColors.blue,
                                    ),
                                  ),
                                );
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          if (!widget.isMe)
                            GestureDetector(
                              child: GestureDetector(
                                onTap: () {
                                  if (isPlaying) {
                                    stopSpeaking();
                                    isPlaying = !isPlaying;
                                  } else {
                                    speakText(widget.message);
                                    isPlaying = !isPlaying;
                                  }
                                  log(isPlaying.toString());
                                  setState(() {});
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                      color: AppColors.blue,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Play Audio",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.mic,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
          ),
        ),
      ],
    );
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

    result.addAll({'message': message});
    result.addAll({'isMe': isMe});
    result.addAll({'isMarkdown': isMarkdown});
    result.addAll({'isRagPrompt': isRagPrompt});
    result.addAll({'links': links});

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

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));
}
