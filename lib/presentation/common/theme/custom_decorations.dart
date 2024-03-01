import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';

class CustomDecorations {
  static BoxDecoration get primaryBackgroundDecoration => const BoxDecoration(
        image: DecorationImage(
          opacity: 0.5,
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/falcon_card/noise.png',
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.primary,
            Color(0xff811FD0),
          ],
        ),
      );
  static BoxDecoration get primaryReverseBackgroundDecoration =>
      const BoxDecoration(
        image: DecorationImage(
          opacity: 0.5,
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/falcon_card/noise.png',
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            Color(0xff811FD0),
          ],
        ),
      );
}
