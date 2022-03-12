import 'dart:ui';
import 'package:riverpod_sample/ui_kit/pnd_colors.dart';

class PNDScaffoldTheme {
  final Color backgroundColor;
  final Color appBarColor;
  final Color popupColor;

  const PNDScaffoldTheme._({
    required this.backgroundColor,
    required this.appBarColor,
    required this.popupColor,
  });

  factory PNDScaffoldTheme.light() => const PNDScaffoldTheme._(
        backgroundColor: PNDColors.white,
        appBarColor: PNDColors.gray600,
        popupColor: PNDColors.white,
      );

  factory PNDScaffoldTheme.dark() => const PNDScaffoldTheme._(
        backgroundColor: PNDColors.black,
        appBarColor: PNDColors.gray700,
        popupColor: PNDColors.gray700,
      );
}
