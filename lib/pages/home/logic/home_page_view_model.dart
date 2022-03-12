import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_sample/ui_kit/pnd_colors.dart';

import 'lock_status.dart';

part 'home_page_view_model.freezed.dart';

/// пример вьюмодели страницы под [freezed]
/// Описаны несколько основных состояний,
/// каждое из который может дополнительно мутировать,
/// например, через [.setLoading(isLoading: true/false)]
/// Важно: новое состояние = новый инстанс
@freezed
class HomePageViewModel with _$HomePageViewModel {
  const factory HomePageViewModel({
    required LockStatus lockStatus,
    required String bodyTextKey,
    required Color bodyTextColor,
    required String actionButtonTextKey,
    @Default(false) bool isLoading,
  }) = _HomePageViewModel;

  factory HomePageViewModel.def() => const HomePageViewModel(
        lockStatus: LockStatus.undefined,
        bodyTextKey: 'no data',
        bodyTextColor: PNDColors.gray600,
        actionButtonTextKey: 'no data',
      );

  factory HomePageViewModel.lock() => const HomePageViewModel(
        lockStatus: LockStatus.lock,
        bodyTextKey: 'is locked',
        bodyTextColor: PNDColors.green,
        actionButtonTextKey: 'Unlock',
      );

  factory HomePageViewModel.unlock() => const HomePageViewModel(
        lockStatus: LockStatus.unlock,
        bodyTextKey: 'is unlocked',
        bodyTextColor: PNDColors.red,
        actionButtonTextKey: 'Lock',
      );
}
