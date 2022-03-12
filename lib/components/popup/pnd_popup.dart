import 'package:flutter/material.dart';
import 'package:riverpod_sample/ui_kit/button/pnd_button.dart';
import 'package:riverpod_sample/ui_kit/text/pnd_text.dart';

class PNDPopup extends StatelessWidget {
  final String title;
  final String? subTitle;
  final PopupAction primaryButton;
  final PopupAction? secondaryButton;

  const PNDPopup({
    required this.title,
    this.subTitle,
    required this.primaryButton,
    this.secondaryButton,
    Key? key,
  }) : super(key: key);

  factory PNDPopup.info({
    required String title,
    required VoidCallback? onConfirm,
    String? subTitle,
    String buttonText = 'confirm',
  }) =>
      PNDPopup(
        title: title,
        subTitle: subTitle,
        primaryButton: PopupAction.primary(
          text: buttonText,
          onTap: onConfirm,
        ),
      );

  @override
  Widget build(BuildContext context) => Dialog(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        insetPadding: const EdgeInsets.all(32.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PNDText.title(title),
              if (subTitle != null) PNDText.caption(subTitle!),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: [
                    Flexible(
                      child: primaryButton,
                    ),
                    if (secondaryButton != null)
                      Flexible(
                        child: secondaryButton!,
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}

class PopupAction extends StatelessWidget {
  final String text;
  final bool isAccent;
  final VoidCallback? onTap;

  const PopupAction._({
    required this.text,
    required this.onTap,
    required this.isAccent,
    Key? key,
  }) : super(key: key);

  factory PopupAction.primary({
    required String text,
    required VoidCallback? onTap,
  }) =>
      PopupAction._(
        text: text,
        onTap: onTap,
        isAccent: true,
      );

  factory PopupAction.secondary({
    required String text,
    required VoidCallback? onTap,
  }) =>
      PopupAction._(
        text: text,
        onTap: onTap,
        isAccent: false,
      );

  @override
  Widget build(BuildContext context) => PNDButton(
        title: text,
        // todo add isAccent field into PNDButton
        onTap: () {
          Navigator.of(context).pop();
          onTap?.call();
        },
      );
}
