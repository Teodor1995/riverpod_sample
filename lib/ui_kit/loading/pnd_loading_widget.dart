import 'package:flutter/widgets.dart';
import 'package:riverpod_sample/ui_kit/text/pnd_text.dart';

class PNDLoadingWidget extends StatelessWidget {
  const PNDLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Opacity(
        opacity: 0.5,
        child: PNDText('loading...'),
      );
}
