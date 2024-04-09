import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_event.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_state.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';
import 'package:hacksprint_flutter/presentation/screens/chat/chat_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ChatScreen()));
        }
      },
      builder: (context, state) => Scaffold(
        backgroundColor: AppColors.dark,
        body: Center(
          child: state.isLoading
              ? CircularProgressIndicator(
                  color: AppColors.blue,
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "asset/app_logo.svg",
                      width: 70,
                      height: 70,
                    ),
                    verSpacing_16,
                    Text(
                      "Register to get started!",
                      style: ts20.white,
                    ),
                    verSpacing_16,
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signUpRequested());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                      ),
                      child: Text(
                        "Register with Google",
                        style: ts16.white,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
