import 'package:riverpod_sample/global/toast_manager.dart';
import 'home_page_state.dart';
import 'lock_status.dart';

/// Пример менеджера страницы.
/// Знает про стейт, может его мутировать через публичные редьюесеры стейта,
/// но не подписан на его изменения
/// Знает про глобальный менеджер [ToastManager], может через него выкинуть тост
/// Важно: в этом классе нет завязки на риверпод, все инстансы прокидыаются в чистом виде
class HomePageManager {
  final HomePageState _state;
  final ToastManager _toastManager;

  HomePageManager(
    this._state,
    this._toastManager,
  ) {
    print('create instance of HomePageManager');
  }

  Future<void> init() async {
    _state.setLoading(isLoading: true);
    await Future<void>.delayed(const Duration(seconds: 5));
    _state.setUnLocked();
  }

  void switchLock() {
    switch (_state.state.lockStatus) {
      case LockStatus.undefined:
        _showToast();
        break;
      case LockStatus.lock:
        _unlock();
        break;
      case LockStatus.unlock:
        _lock();
        break;
    }
  }

  void _showToast() =>
      _toastManager.showToast(message: 'state is not defined, try letter');

  Future<void> _unlock() async {
    _state.setLoading(isLoading: true);
    await Future<void>.delayed(const Duration(seconds: 2));
    _state.setUnLocked();
  }

  Future<void> _lock() async {
    _state.setLoading(isLoading: true);
    await Future<void>.delayed(const Duration(seconds: 2));
    _state.setLocked();
  }
}
