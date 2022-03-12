import 'dart:ui';
import 'package:riverpod_sample/ui_kit/pnd_colors.dart';

class PNDScaffoldTheme {
  final Color backgroundColor;
  final Color appBarColor;

  const PNDScaffoldTheme._({
    required this.backgroundColor,
    required this.appBarColor,
  });

  factory PNDScaffoldTheme.light() => const PNDScaffoldTheme._(
        backgroundColor: PNDColors.white,
        appBarColor: PNDColors.gray700,
      );

  factory PNDScaffoldTheme.dark() => const PNDScaffoldTheme._(
        backgroundColor: PNDColors.black,
        appBarColor: PNDColors.gray700,
      );
}
