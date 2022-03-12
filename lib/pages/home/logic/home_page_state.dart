import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/pages/home/logic/home_page_view_model.dart';

/// [HomePageState] - хранит состояние страницы и оповещает подписчиков об изменении [state]
class HomePageState extends StateNotifier<HomePageViewModel> {
  HomePageState() : super(HomePageViewModel.def());

  @override
  HomePageViewModel get state => super.state;

  /// Все мутации стейта описаны в самом стейте,
  /// ничто не может менять стейт произвольным образом извне
  void setLocked() => state = HomePageViewModel.lock();

  void setUnLocked() => state = HomePageViewModel.unlock();

  void setLoading({required bool isLoading}) =>
      state = state.copyWith(isLoading: isLoading);
}
