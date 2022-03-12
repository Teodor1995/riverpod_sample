import 'package:riverpod_sample/utils/navigator/app_route_delegate.dart';
import 'package:riverpod_sample/utils/navigator/bundle.dart';
import 'app_routes.dart';

class NavigationManager {
  final AppRouterDelegate _router;

  const NavigationManager(this._router);

  void openSettings() => _router.pushPage(AppRoutes.settingsPage);

  void openAppSettings() => _router.pushPage(AppRoutes.appSettingsPage);

  /// Откроет роут и сформирует стек навигации так,
  /// чтобы при навигации назад показать промежуточные роуты
  void openComplexRoute(Map<String, Bundle?> routes) =>
      routes.forEach((routeName, bundle) {
        _router.pushPage(routeName, bundle);
      });

  void pop() => _router.popRoute();
}
