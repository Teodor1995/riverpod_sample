import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';

@freezed
class AppModel with _$AppModel {
  const factory AppModel({
    required bool isDarkTheme,
  }) = _AppModel;

  factory AppModel.def() => const AppModel(
        isDarkTheme: false,
      );
}
