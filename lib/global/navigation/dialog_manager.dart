import 'package:flutter/material.dart';
import 'package:riverpod_sample/components/popup/pnd_popup.dart';

class DialogManager {
  final GlobalKey _navigationKey;

  const DialogManager(this._navigationKey);

  void showInfoPopup({
    required String title,
    String? subTitle,
    VoidCallback? onConfirm,
  }) =>
      _showPopup(
        child: PNDPopup.info(
          title: title,
          subTitle: subTitle,
          onConfirm: onConfirm,
        ),
      );

  void _showPopup({required Widget child}) => showDialog<void>(
        context: _navigationKey.currentState!.context,
        useRootNavigator: false,
        builder: (_) => child,
      );
}