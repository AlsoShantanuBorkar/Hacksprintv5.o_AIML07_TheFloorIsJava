import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_bloc.dart';
import 'package:hacksprint_flutter/application/bloc/auth/auth_event.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';
import 'package:hacksprint_flutter/presentation/screens/authentication/login_screen.dart';
import 'package:hacksprint_flutter/presentation/screens/chat/conversations_list_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.dark,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            verSpacing_56,
            verSpacing_32,
            SvgPicture.asset(
              "asset/app_logo.svg",
              width: 70,
              height: 70,
            ),
            verSpacing_8,
            Text(
              "LawyerUp",
              style: ts27.white,
            ),
            verSpacing_8,
            const Divider(),
            verSpacing_16,
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConversationListScreen()));
              },
              tileColor: Colors.grey.shade900,
              title: const Text(
                "All Conversations",
                style: TextStyle(color: white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            verSpacing_8,
            ListTile(
              onTap: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              tileColor: Colors.grey.shade900,
              title: const Text(
                "Log Out",
                style: TextStyle(color: white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              trailing: const Icon(
                Icons.exit_to_app,
                color: white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
