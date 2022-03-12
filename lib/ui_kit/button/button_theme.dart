import 'dart:ui';
import 'package:riverpod_sample/ui_kit/pnd_colors.dart';

class PNDButtonTheme {
  final Color color;

  const PNDButtonTheme._({
    required this.color,
  });

  factory PNDButtonTheme.light() => const PNDButtonTheme._(
        color: PNDColors.blue,
      );

  factory PNDButtonTheme.dark() => const PNDButtonTheme._(
        color: PNDColors.gray600,
      );
}
