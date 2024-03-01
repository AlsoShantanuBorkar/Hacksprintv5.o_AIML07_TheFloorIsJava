import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';

class BodyText extends StatelessWidget {
  final String text;
  final TextVariant textVariant;
  final WeightVariant weightVariant;
  final Color color;
  final bool inline;
  final bool isMarkdown;
  final TextAlign textAlign;
  final double padding;
  const BodyText({
    Key? key,
    this.isMarkdown = false,
    required this.text,
    required this.textVariant,
    this.weightVariant = WeightVariant.normal,
    this.textAlign = TextAlign.start,
    this.padding = 8,
    this.inline = false,
    this.color = white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: inline ? null : double.infinity,
      child: !isMarkdown
          ? Text(
              text,
              style: _allocateTextStyle(context),
            )
          : MarkdownBody(
              data: text,
              styleSheet: MarkdownStyleSheet(
                a: TextStyle(color: color),
                p: TextStyle(color: color),
                h1: TextStyle(color: color),
                h2: TextStyle(color: color),
                h3: TextStyle(color: color),
                h4: TextStyle(color: color),
                h5: TextStyle(color: color),
                h6: TextStyle(color: color),
                em: TextStyle(color: color),
                strong: TextStyle(color: color),
                del: TextStyle(color: color),
                blockquote: TextStyle(color: color),
                img: TextStyle(color: color),
                checkbox: TextStyle(color: color),
                listBullet: TextStyle(color: color),
                tableHead: TextStyle(color: color),
                tableBody: TextStyle(color: color),
              ),
            ),
    );
  }

  TextStyle? _allocateTextStyle(BuildContext context) {
    TextStyle? _designatedStyle;
    switch (textVariant) {
      case TextVariant.small:
        _designatedStyle = ts16;
        break;
      case TextVariant.medium:
        _designatedStyle = Theme.of(context).textTheme.bodyMedium;
        break;
      case TextVariant.large:
        _designatedStyle = Theme.of(context).textTheme.bodyLarge;
        break;
      case TextVariant.xLarge:
        _designatedStyle = Theme.of(context).textTheme.titleLarge;
        break;
      case TextVariant.vSmall:
        _designatedStyle = Theme.of(context).textTheme.bodySmall;
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

enum TextVariant { vSmall, small, medium, large, xLarge }

enum WeightVariant { bold, semibold, normal }
