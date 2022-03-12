import 'package:flutter/material.dart';
import 'package:riverpod_sample/pages/app_settings/app_settings_page.dart';
import 'package:riverpod_sample/pages/home/ui/home_page.dart';
import 'package:riverpod_sample/pages/settings/settings_page.dart';
import 'package:riverpod_sample/utils/navigator/bundle.dart';

import '../../pages/error/undefined_route.dart';

class AppRoutes {
  static const initialRoute = homePage;
  final navigatorKey = GlobalKey<NavigatorState>();

  static const homePage = 'home_page';
  static const settingsPage = 'settings_page';
  static const appSettingsPage = 'app_settings_page';


  MaterialPage onGeneratePage(String routeName, Bundle? bundle) {
    Widget? widget;
    switch (routeName) {
      case AppRoutes.homePage:
        widget = const HomePage();
        break;
      case AppRoutes.settingsPage:
        widget = const SettingsPage();
        break;
      case AppRoutes.appSettingsPage:
        widget = const AppSettingsPage();
        break;
    }

    return MaterialPage(
      child: widget ?? const UndefinedRoute(),
      name: routeName,
      arguments: bundle,
    );
  }
}



