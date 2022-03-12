import 'package:riverpod_sample/components/scaffold/pnd_scaffold_theme.dart';
import 'package:riverpod_sample/ui_kit/button/button_theme.dart';
import 'package:riverpod_sample/ui_kit/text/text_theme.dart';

/// [PNDThemeData] - класс является источником тем/стилей для всего приложения и отдельных виджетов
class PNDThemeData {
  final PNDScaffoldTheme pndScaffoldTheme;
  final PNDButtonTheme pndButtonTheme;
  final PNDTextTheme pndTextTheme;

  const PNDThemeData._({
    required this.pndScaffoldTheme,
    required this.pndButtonTheme,
    required this.pndTextTheme,
  });

  factory PNDThemeData.light() => PNDThemeData._(
        pndScaffoldTheme: PNDScaffoldTheme.light(),
        pndButtonTheme: PNDButtonTheme.light(),
        pndTextTheme: PNDTextTheme.light(),
      );

  factory PNDThemeData.dark() => PNDThemeData._(
        pndScaffoldTheme: PNDScaffoldTheme.dark(),
        pndButtonTheme: PNDButtonTheme.dark(),
        pndTextTheme: PNDTextTheme.dark(),
      );
}
