import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'di.dart';
import 'ui_kit/theme/pnd_theme.dart';
import 'ui_kit/theme/pnd_theme_data.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final isDarkTheme = ref.watch(appStateProvider).isDarkTheme;

    return PNDTheme(
      pndThemeData: isDarkTheme ? PNDThemeData.dark() : PNDThemeData.light(),
      child: MaterialApp.router(
        routerDelegate: ref.watch(appRouteDelegateProvider),
        routeInformationParser: ref.watch(appInformationParserProvider),
      ),
    );
  }
}
