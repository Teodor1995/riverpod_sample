import 'package:flutter/rendering.dart';
import 'package:riverpod_sample/ui_kit/text/text_theme.dart';

/// Класс [PNDTypography] содержит описание начертаний шрифтов: размер, жирность и тп.
/// Цвет шрифта задается отдельно в теме [PNDTextTheme] либо в месте использования.
class PNDTypography {
  static const title = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 26,
    height: 32 / 26,
  );

  static const titleBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 26,
    height: 32 / 26,
  );

  static const body = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    height: 24 / 20,
  );

  static const bodyBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    height: 24 / 20,
  );

  static const caption = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 19 / 16,
  );

  static const captionBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 19 / 16,
  );
}
