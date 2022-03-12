import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_sample/ui_kit/theme/pnd_theme.dart';

/// Общий scaffold для приложения, тут должна быть логика сложнее, например:
/// обработка поялвения клавиатуры так, чтобы она не перекрывала кнопки, прибитые к низу экрана;
/// сливеры, для всего body - на случай если контент не влез он должен автоматически начать скролиться
/// и прочие общие кейсы, которые будут всплывать по ходу работы над прилажкой
class PNDScaffold extends StatelessWidget {
  final Widget body;
  final Widget? actions;

  const PNDScaffold({
    required this.body,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = PNDTheme.of(context).pndThemeData;
    final scaffoldTheme = theme.pndScaffoldTheme;

    return Material(
      color: scaffoldTheme.backgroundColor,
      child: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: body,
            ),
          ),
          if (actions != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: actions!,
            ),
        ],
      ),
    );
  }
}
