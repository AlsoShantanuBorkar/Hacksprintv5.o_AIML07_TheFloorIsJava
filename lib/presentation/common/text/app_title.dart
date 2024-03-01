import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/presentation/common/text/body_text.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';
import 'package:hacksprint_flutter/presentation/common/utils/widget_utils.dart';

class AppTitle extends StatelessWidget {
  final String text;
  final TextVariant textVariant;
  final WeightVariant weightVariant;
  final TextAlign textAlign;
  final Color color;
  final bool inline;
  final BoxDecoration? boxDecoration;
  final double padding;
  final double? width;
  const AppTitle({
    Key? key,
    required this.text,
    required this.textVariant,
    this.weightVariant = WeightVariant.bold,
    this.textAlign = TextAlign.start,
    this.color = Colors.black,
    this.padding = 8,
    this.inline = false,
    this.boxDecoration,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: inline ? null : double.infinity,
      decoration: boxDecoration,
      child: Text(
        // overflow: TextOverflow.ellipsis,
        text.length > 40 ? "${text.substring(0, 40)}..." : text,
        textAlign: textAlign,
        style: _allocateTextStyle(context),
      ).marginZero,
    );
  }

  TextStyle? _allocateTextStyle(BuildContext context) {
    TextStyle? _designatedStyle;
    switch (textVariant) {
      case TextVariant.small:
        _designatedStyle = ts16;
        break;
      case TextVariant.medium:
        _designatedStyle = Theme.of(context).textTheme.titleMedium;
        break;
      case TextVariant.large:
        _designatedStyle = Theme.of(context).textTheme.titleLarge;
        break;
      case TextVariant.xLarge:
        _designatedStyle = Theme.of(context).textTheme.titleLarge;
        break;
      case TextVariant.vSmall:
        _designatedStyle = Theme.of(context).textTheme.titleSmall;
        break;
    }

    switch (weightVariant) {
      case WeightVariant.bold:
        return _designatedStyle!.bold.copyWith(color: color);

      case WeightVariant.semibold:
        return _designatedStyle!.semiBold.copyWith(color: color);

      case WeightVariant.normal:
        return _designatedStyle!.regular.copyWith(color: color);
    }
  }
}
