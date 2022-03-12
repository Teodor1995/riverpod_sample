import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_sample/ui_kit/theme/pnd_theme.dart';

/// Общий scaffold для приложения, тут должна быть логика сложнее, например:
/// обработка поялвения клавиатуры так, чтобы она не перекрывала кнопки, прибитые к низу экрана;
/// сливеры, для всего body - на случай если контент не влез он должен автоматически начать скролиться
/// и прочие общие кейсы, которые будут всплывать по ходу работы над прилажкой
class PNDScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? actions;

  const PNDScaffold({
    required this.body,
    this.appBar,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = PNDTheme.of(context).pndThemeData;
    final scaffoldTheme = theme.pndScaffoldTheme;

    return SafeArea(
      child: Material(
        color: scaffoldTheme.backgroundColor,
        child: Stack(
          children: [
            if (appBar != null)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: appBar!,
              ),
            Positioned.fill(
              left: 0,
              right: 0,
              top: appBar == null ? 0 : appBar!.preferredSize.height,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    body,
                  ],
                ),
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
      ),
    );
  }
}
