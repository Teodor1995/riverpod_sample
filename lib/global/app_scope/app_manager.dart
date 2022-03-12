import 'package:riverpod_sample/global/app_scope/app_state.dart';

/// [AppManager] - глобальный менеджер приложения.
/// Такие менеджеры провайдятся без [.autoDispose],
/// чтобы инстанс никогда не диспоузился
class AppManager {
  final AppState _appState;

  const AppManager(
    this._appState,
  );

  void switchTheme() => _appState.switchTheme();
}
