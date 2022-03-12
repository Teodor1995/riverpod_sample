import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/global/app_scope/app_manager.dart';
import 'package:riverpod_sample/global/app_scope/app_model.dart';
import 'package:riverpod_sample/global/app_scope/app_state.dart';
import 'package:riverpod_sample/global/navigation/app_routes.dart';
import 'package:riverpod_sample/global/navigation/navigation_manager.dart';
import 'package:riverpod_sample/global/toast_manager.dart';
import 'package:riverpod_sample/pages/home/logic/home_page_manager.dart';
import 'package:riverpod_sample/pages/home/logic/home_page_state.dart';
import 'pages/home/logic/home_page_view_model.dart';
import 'utils/navigator/app_route_delegate.dart';
import 'utils/navigator/app_router_information_parser.dart';

/// globals
final toastManagerProvider = Provider(
  (_) => const ToastManager(),
);

final navigationManagerProvider = Provider(
  (ref) => NavigationManager(
    ref.watch(appRouteDelegateProvider),
  ),
);

final appRoutesProvider = Provider(
  (_) => AppRoutes(),
);

final appRouteDelegateProvider = Provider(
  (ref) => AppRouterDelegate(
    initialRoute: AppRoutes.initialRoute,
    navigatorKey: ref.watch(appRoutesProvider).navigatorKey,
    onGeneratePage: ref.watch(appRoutesProvider).onGeneratePage,
  ),
);

final appInformationParserProvider = Provider(
  (_) => AppRouteInformationParser(),
);

final initialRouteSettingsProvider = Provider(
  (_) => const RouteSettings(name: AppRoutes.homePage),
);

/// app scope
final appStateProvider = StateNotifierProvider<AppState, AppModel>(
  (_) => AppState(),
);

final appManagerProvider = Provider(
  (ref) => AppManager(
    ref.watch(appStateProvider.notifier),
  ),
);

/// home page
// локальные провайдеры обычно провайдется с [.autoDispose]
// но тут чтобы показать, что менеджер не пересоздается каждый раз после изменения стейта,
// умышленно оставил провайдеры без [.autoDispose]
final homePageStateProvider =
    StateNotifierProvider<HomePageState, HomePageViewModel>(
  (_) => HomePageState(),
);

final homePageManagerProvider = Provider(
  (ref) => HomePageManager(
    ref.watch(homePageStateProvider.notifier),
    ref.watch(toastManagerProvider),
  ),
);

// Пример, когда при dispose провайдера нужно вызвать dispose у менеджера
// final homePageManagerProvider = Provider(
//   (ref) {
//     final manager = HomePageManager(
//       ref.watch(homePageStateProvider.notifier),
//       ref.watch(toastManager),
//     );
//     ref.onDispose(manager.dispose);
//     return manager;
//   },
// );
