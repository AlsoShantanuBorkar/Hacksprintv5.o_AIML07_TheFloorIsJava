import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_state.dart';
import 'package:hacksprint_flutter/application/bloc/chat/chat_bloc.dart';
import 'package:hacksprint_flutter/core/dependency_injection/injector.dart';
import 'package:hacksprint_flutter/core/objectbox/objectbox_adapter.dart';
import 'package:hacksprint_flutter/core/utils/flutter_tts.dart';
import 'package:hacksprint_flutter/core/utils/http_service.dart';
import 'package:hacksprint_flutter/core/utils/logger.dart';
import 'package:hacksprint_flutter/firebase_options.dart';
import 'package:hacksprint_flutter/presentation/screens/authentication/login_screen.dart';
import 'package:hacksprint_flutter/presentation/screens/chat/chat_screen.dart';
import 'package:hacksprint_flutter/presentation/screens/splash/splash_screen.dart';

const String serverURL = "https://be-project-jli8.onrender.com/";
//

late final ObjectBoxAdapter objectbox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectbox = await ObjectBoxAdapter.create();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  await configureTts();
  Bloc.observer = MyBlocObserver();
  await dotenv.load(fileName: "dev.env");
  // serverURL = dotenv.get("SERVER_URL");
  http.api.get(serverURL);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ChatBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isAuthenticated) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            } else {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            }
          },
          builder: (context, state) {
            return const SplashScreen();
          },
        ),
      ),
    );
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    Log.info('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    Log.info('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Log.info('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    Log.info('onClose -- ${bloc.runtimeType}');
  }
}
