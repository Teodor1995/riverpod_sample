import 'package:flutter/rendering.dart';
import '../pnd_colors.dart';

class PNDTextTheme {
  final Color mainTextColor;
  final Color minorTextColor;

  PNDTextTheme._({
    required this.mainTextColor,
    required this.minorTextColor,
  });

  factory PNDTextTheme.light() => PNDTextTheme._(
        mainTextColor: PNDColors.black,
        minorTextColor: PNDColors.gray800,
      );

  factory PNDTextTheme.dark() => PNDTextTheme._(
        mainTextColor: PNDColors.white,
        minorTextColor: PNDColors.gray800,
      );
}
