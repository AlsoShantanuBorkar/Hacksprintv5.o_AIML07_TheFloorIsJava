import 'dart:developer';

import 'package:flutter_tts/flutter_tts.dart';

FlutterTts flutterTts = FlutterTts();

Future<void> configureTts() async {
  await flutterTts.setLanguage('en-US');
  await flutterTts.setSpeechRate(.5);
  await flutterTts.setVolume(1.0);
  List<dynamic>? languages = await flutterTts.getLanguages;
  log(languages.toString());
}

void speakText(String text) async {
  log("speaking");
  await flutterTts.speak(text);
}

void stopSpeaking() async {
  await flutterTts.stop();
}
