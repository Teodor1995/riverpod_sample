import 'package:flutter/material.dart';
import 'package:riverpod_sample/ui_kit/theme/pnd_theme.dart';

class PNDAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? lead;
  final Widget? trail;

  const PNDAppBar({
    this.lead,
    this.trail,
    Key? key,
  }) : super(key: key);

  factory PNDAppBar.withBack({Widget? trail}) => PNDAppBar(
        lead: const BackIcon(),
        trail: trail,
      );

  @override
  Widget build(BuildContext context) {
    final theme = PNDTheme.of(context).pndThemeData.pndScaffoldTheme;

    return Material(
      child: ColoredBox(
        color: theme.appBarColor,
        child: SizedBox.fromSize(
          size: preferredSize,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lead ?? const SizedBox.shrink(),
              trail ?? const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 64);
}

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.chevron_left),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
