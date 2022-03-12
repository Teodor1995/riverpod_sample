import 'package:flutter/cupertino.dart';
import 'package:riverpod_sample/ui_kit/theme/pnd_theme_data.dart';

/// [PNDTheme] должен оборачивать все дерево виджетов.
/// [PNDTheme] заменяет прокидывание параметров в конструторе
/// предоставляя [PNDThemeData] через [BuildContext]
class PNDTheme extends InheritedWidget {
  static const _errorText = 'PNDTheme is not found in context';

  final PNDThemeData pndThemeData;

  const PNDTheme({
    required Widget child,
    required this.pndThemeData,
    Key? key,
  }) : super(child: child, key: key);

  @override
  bool updateShouldNotify(PNDTheme oldWidget) =>
      pndThemeData != oldWidget.pndThemeData;

  static PNDTheme? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<PNDTheme>();

  static PNDTheme of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<PNDTheme>();
    assert(result != null, _errorText);
    if (result == null) throw _errorText;
    return result;
  }
}
