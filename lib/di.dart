import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/global/app_scope/app_manager.dart';
import 'package:riverpod_sample/global/app_scope/app_model.dart';
import 'package:riverpod_sample/global/app_scope/app_state.dart';
import 'package:riverpod_sample/global/toast_manager.dart';
import 'package:riverpod_sample/pages/home/logic/home_page_manager.dart';
import 'package:riverpod_sample/pages/home/logic/home_page_state.dart';

import 'pages/home/logic/home_page_view_model.dart';

/// globals
final toastManager = Provider(
  (_) => const ToastManager(),
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
    ref.watch(toastManager),
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
