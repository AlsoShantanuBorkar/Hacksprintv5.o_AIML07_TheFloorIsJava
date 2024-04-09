import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SvgPicture.asset(
            "asset/app_logo.svg",
            width: 70,
            height: 70,
          ),
          verSpacing_8,
          Text(
            "LawyerUp",
            style: ts27.white,
          )
        ]),
      ),
    );
  }
}
