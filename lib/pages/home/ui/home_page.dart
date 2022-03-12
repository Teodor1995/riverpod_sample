import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_sample/components/scaffold/pnd_page_scaffold.dart';
import 'package:riverpod_sample/global/navigation/app_routes.dart';
import 'package:riverpod_sample/ui_kit/app_bar/pnd_app_bar.dart';
import 'package:riverpod_sample/ui_kit/button/pnd_button.dart';
import 'package:riverpod_sample/ui_kit/loading/pnd_loading_widget.dart';
import 'package:riverpod_sample/ui_kit/text/pnd_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../di.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    useEffect(
      () {
        // [.addPostFrameCallback] добавлен для того, чтобы мутация стейта
        // '''
        //     .setLoading(isLoading: true) - находится внутри метода .init()
        // '''
        // произошла после завершения построения виджета.
        // В противном случае, если не ждать завершения отрисовки фрейма,
        // мутация стейта, заставит подписчиков перестраиваться,
        // и фреймворк выкинет ошибку.
        WidgetsBinding.instance?.addPostFrameCallback(
          (_) => ref.read(homePageManagerProvider).init(),
        );
        return null;
      },
      const [],
    );

    return PNDScaffold(
      appBar: PNDAppBar(
        trail: Row(
          children: [
            IconButton(
              onPressed: () =>
                  ref.read(navigationManagerProvider).openSettings(),
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                ref.read(navigationManagerProvider).openComplexRoute({
                  AppRoutes.settingsPage: null,
                  AppRoutes.appSettingsPage: null,
                });
              },
              icon: const Icon(Icons.skip_next),
            ),
          ],
        ),
      ),
      body: const _Body(),
      actions: const _Actions(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // подписка на вью вьюмодель, изменения любого свойства вызовет перестроение виджета
    final viewModel = ref.watch(homePageStateProvider);

    return viewModel.isLoading
        ? const PNDLoadingWidget()
        : PNDText.title(
            viewModel.bodyTextKey,
            color: viewModel.bodyTextColor,
          );
  }
}

class _Actions extends ConsumerWidget {
  const _Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // подписка на отдельное свойство вью модели
    final textKey = ref.watch(
      homePageStateProvider.select(
        (value) => value.actionButtonTextKey,
      ),
    );

    final isLoading = ref.watch(
      homePageStateProvider.select(
        (value) => value.isLoading,
      ),
    );

    return PNDButton(
      isLoading: isLoading,
      title: textKey,
      // колбеки нажатия вызываются через лямбду, а не по ссылке на метод, чтобы
      // получать инстанс менеджера в момент нажатия а не при построении виджета
      // доступ к менеджера из UI через read - без подписки
      onTap: () => ref.read(homePageManagerProvider).switchLock(),
    );
  }
}
