import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/radius.dart';
import 'package:hacksprint_flutter/presentation/common/theme/spacing.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';

class ButtonSmall extends StatelessWidget {
  const ButtonSmall({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: AppBorderRadius.medium,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        child: Text(
          label,
          style: ts12.blue,
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.label,
    this.onPressed,
    this.height = 50,
    this.width,
    this.color,
    this.isOutlined = false,
    this.leadingIcon,
    this.trailingIcon,
    this.radius,
    this.textStyle,
    this.child,
    this.customIcon,
    this.shadows,
    this.showLoader = false,
    this.iconColor = white,
    this.margin = 0,
  }) : super(key: key);

  final String? label;
  final bool showLoader;
  final Color iconColor;
  final VoidCallback? onPressed;
  final double height;
  final Widget? child;
  final double? width;
  final Color? color;
  final bool isOutlined;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final BorderRadiusGeometry? radius;
  final TextStyle? textStyle;
  final Widget? customIcon;
  final List<BoxShadow>? shadows;
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: height,
            width: width,
            margin: EdgeInsets.all(margin),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: isOutlined
                ? BoxDecoration(
                    borderRadius: radius ?? AppBorderRadius.medium,
                    border: Border.all(color: AppColors.orange),
                    boxShadow: shadows,
                    color: white,
                  )
                : BoxDecoration(
                    color: color ?? AppColors.orange,
                    borderRadius: radius ?? AppBorderRadius.medium,
                    boxShadow: shadows,
                  ),
            child: showLoader
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RefreshProgressIndicator(
                        color: white,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (leadingIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            leadingIcon,
                            color: isOutlined ? AppColors.orange : iconColor,
                            size: 20,
                          ),
                        ),
                      if (label != null)
                        Text(
                          label!,
                          style: textStyle ??
                              (isOutlined
                                  ? ts16.primary.bold
                                  : ts16.white.bold),
                        ),
                      if (label != null)
                        if (trailingIcon != null || customIcon != null)
                          horSpacing_8,
                      if (trailingIcon != null)
                        Icon(
                          trailingIcon,
                          color: isOutlined ? AppColors.primary : iconColor,
                          size: 20,
                        ),
                      if (customIcon != null) customIcon!
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.label,
    this.borderColor,
    this.labelColor,
    this.onPressed,
    this.height = 50,
    this.width,
    this.color,
    this.isOutlined = false,
    this.leadingIcon,
    this.trailingIcon,
    this.radius,
    this.textStyle,
    this.child,
    this.customIcon,
    this.shadows,
    this.showLoader = false,
    this.iconColor = white,
    this.margin = 0,
  }) : super(key: key);
  final Color? borderColor;
  final Color? labelColor;
  final String? label;
  final bool showLoader;
  final Color iconColor;
  final VoidCallback? onPressed;
  final double height;
  final Widget? child;
  final double? width;
  final Color? color;
  final bool isOutlined;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final BorderRadiusGeometry? radius;
  final TextStyle? textStyle;
  final Widget? customIcon;
  final List<BoxShadow>? shadows;
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: height,
            width: width,
            margin: EdgeInsets.all(margin),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: isOutlined
                ? BoxDecoration(
                    borderRadius: radius ?? AppBorderRadius.medium,
                    border: Border.all(
                      color: borderColor ?? AppColors.blue,
                    ),
                    boxShadow: shadows,
                    color: white,
                  )
                : BoxDecoration(
                    border: Border.all(
                        color: borderColor ?? AppColors.blue, width: 1),
                    color: color ?? AppColors.blue,
                    borderRadius: radius ?? AppBorderRadius.medium,
                    boxShadow: shadows,
                  ),
            child: showLoader
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RefreshProgressIndicator(
                        color: white,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (leadingIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            leadingIcon,
                            color: isOutlined ? AppColors.primary : iconColor,
                            size: 20,
                          ),
                        ),
                      if (label != null)
                        Text(
                          label!,
                          style: textStyle ??
                              (isOutlined
                                  ? ts16.primary.bold
                                  : ts16.white.bold),
                        ),
                      if (label != null)
                        if (trailingIcon != null || customIcon != null)
                          horSpacing_8,
                      if (trailingIcon != null)
                        Icon(
                          trailingIcon,
                          color: isOutlined ? AppColors.primary : iconColor,
                          size: 20,
                        ),
                      if (customIcon != null) customIcon!
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
