import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_model.dart';

class AppState extends StateNotifier<AppModel> {
  AppState() : super(AppModel.def());

  @override
  AppModel get state => super.state;

  void switchTheme() => state = state.copyWith(
        isDarkTheme: !state.isDarkTheme,
      );
}
