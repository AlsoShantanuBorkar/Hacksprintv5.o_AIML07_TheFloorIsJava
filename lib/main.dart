import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/core/utils/flutter_tts.dart';
import 'package:hacksprint_flutter/presentation/screens/chat/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureTts();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ChatScreen());
  }
}
