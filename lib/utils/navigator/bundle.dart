import 'package:flutter/widgets.dart';

class Bundle {
  final Object _payload;

  const Bundle(
    this._payload, [
    Map<String, Object?>? params,
  ]);

  T payload<T>() => _payload as T;

  static Bundle of(BuildContext context) =>
      ModalRoute.of(context)?.settings.arguments as Bundle;
}
