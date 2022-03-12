import 'package:flutter/material.dart';
import 'package:riverpod_sample/ui_kit/text/pnd_text.dart';
import 'package:riverpod_sample/ui_kit/theme/pnd_theme.dart';

class PNDButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isLoading;

  const PNDButton({
    required this.title,
    required this.onTap,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = PNDTheme.of(context).pndThemeData.pndButtonTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 64,
          minWidth: 64,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Opacity(
            opacity: isLoading ? 0.5 : 1.0,
            child: IgnorePointer(
              ignoring: isLoading,
              child: GestureDetector(
                onTap: onTap,
                child: ColoredBox(
                  color: theme.color,
                  child: Center(
                    child: PNDText(title),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
