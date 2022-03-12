import 'package:flutter/widgets.dart';
import 'package:riverpod_sample/components/scaffold/pnd_page_scaffold.dart';
import 'package:riverpod_sample/ui_kit/text/pnd_text.dart';
import 'package:riverpod_sample/utils/navigator/bundle.dart';
import 'package:riverpod_sample/utils/navigator/bundle.dart';

/// Передача данных в виде [bundle] при навигации на экран
class UndefinedRoute extends StatelessWidget {
  const UndefinedRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final undefinedRoute = Bundle.of(context).payload<RouteSettings>().name;

    return PNDScaffold(
      body: PNDText.title(
        'undefined route: $undefinedRoute',
      ),
    );
  }
}
