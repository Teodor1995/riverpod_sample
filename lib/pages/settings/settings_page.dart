import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/components/scaffold/pnd_page_scaffold.dart';
import 'package:riverpod_sample/ui_kit/app_bar/pnd_app_bar.dart';
import 'package:riverpod_sample/ui_kit/button/pnd_button.dart';
import '../../di.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) => PNDScaffold(
        appBar: PNDAppBar.withBack(),
        body: PNDButton(
          title: 'Open AppSettings',
          onTap: () => ref.read(navigationManagerProvider).openAppSettings(),
        ),
      );
}
