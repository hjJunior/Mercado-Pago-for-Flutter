import 'dart:async';

import 'package:flutter/services.dart';

class Mercadopago {
  static const MethodChannel _channel =
      const MethodChannel('samples.flutter.io/battery');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
