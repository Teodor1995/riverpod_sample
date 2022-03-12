import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_sample/utils/navigator/bundle.dart';

typedef OnGeneratePageCallback = MaterialPage Function(String, Bundle?);

class AppRouterDelegate extends _AppRouterDelegate {
  AppRouterDelegate({
    required GlobalKey<NavigatorState> navigatorKey,
    required String initialRoute,
    required OnGeneratePageCallback onGeneratePage,
  }) : super(initialRoute: initialRoute, onGeneratePage: onGeneratePage);

  @override
  Widget build(BuildContext context) => Navigator(
        pages: List.of(_pages),
        onPopPage: _onPopPage,
      );
}

abstract class _AppRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with ChangeNotifier {
  final String initialRoute;
  final OnGeneratePageCallback onGeneratePage;

  _AppRouterDelegate({
    required this.initialRoute,
    required this.onGeneratePage,
  });

  final _pages = <MaterialPage>[];

  @override
  Future<void> setInitialRoutePath(_) async {
    _pages.add(
      onGeneratePage(initialRoute, null),
    );

    notifyListeners();
  }

  void pushPage(String routeName, [Bundle? bundle]) {
    _pages.add(
      onGeneratePage(routeName, bundle),
    );

    notifyListeners();
  }

  @override
  Future<bool> popRoute() {
    if (_pages.length > 1) {
      _pages.removeLast();

      notifyListeners();

      return Future.value(true);
    }

    return Future.value(false);
  }

  bool _onPopPage(Route route, Object? result) {
    if (!route.didPop(result)) return false;
    popRoute();

    return true;
  }

  @override
  Future<void> setNewRoutePath(configuration) async {
    //do nothing, maybe add here a route observer for metrics
  }
}
