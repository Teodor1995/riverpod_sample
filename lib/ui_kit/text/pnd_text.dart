import 'package:flutter/widgets.dart';
import 'package:riverpod_sample/ui_kit/theme/pnd_theme.dart';
import 'package:riverpod_sample/ui_kit/typography/pnd_typography.dart';

class PNDText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color? color;

  const PNDText(
    this.text, {
    this.textStyle = PNDTypography.body,
    this.color,
    Key? key,
  }) : super(key: key);

  factory PNDText.title(
    String text, {
    Color? color,
  }) =>
      PNDText(
        text,
        color: color,
        textStyle: PNDTypography.title,
      );

  factory PNDText.titleBold(
    String text, {
    Color? color,
  }) =>
      PNDText(
        text,
        color: color,
        textStyle: PNDTypography.titleBold,
      );

  factory PNDText.body(
    String text, {
    Color? color,
  }) =>
      PNDText(
        text,
        color: color,
        textStyle: PNDTypography.body,
      );

  factory PNDText.bodyBold(
    String text, {
    Color? color,
  }) =>
      PNDText(
        text,
        color: color,
        textStyle: PNDTypography.bodyBold,
      );

  factory PNDText.caption(
    String text, {
    Color? color,
  }) =>
      PNDText(
        text,
        color: color,
        textStyle: PNDTypography.caption,
      );

  factory PNDText.captionBold(
    String text, {
    Color? color,
  }) =>
      PNDText(
        text,
        color: color,
        textStyle: PNDTypography.captionBold,
      );

  @override
  Widget build(BuildContext context) {
    final theme = PNDTheme.of(context).pndThemeData.pndTextTheme;

    return Text(
      text,
      style: textStyle.copyWith(
        color: color ?? theme.mainTextColor,
      ),
    );
  }
}
