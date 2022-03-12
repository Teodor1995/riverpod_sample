import 'dart:ui';
import 'package:riverpod_sample/ui_kit/pnd_colors.dart';

class PNDScaffoldTheme {
  final Color backgroundColor;

  const PNDScaffoldTheme._({
    required this.backgroundColor,
  });

  factory PNDScaffoldTheme.light() => const PNDScaffoldTheme._(
        backgroundColor: PNDColors.white,
      );

  factory PNDScaffoldTheme.dark() => const PNDScaffoldTheme._(
        backgroundColor: PNDColors.black,
      );
}
