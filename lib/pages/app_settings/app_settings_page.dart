import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/components/scaffold/pnd_page_scaffold.dart';
import 'package:riverpod_sample/di.dart';
import 'package:riverpod_sample/ui_kit/app_bar/pnd_app_bar.dart';
import 'package:riverpod_sample/ui_kit/button/pnd_button.dart';

class AppSettingsPage extends ConsumerWidget {
  const AppSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) => PNDScaffold(
        appBar: PNDAppBar.withBack(),
        body: PNDButton(
          title: 'Switch Theme',
          onTap: () => ref.read(appManagerProvider).switchTheme(),
        ),
      );
}
