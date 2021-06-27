
import 'dart:async';

import 'package:flutter/services.dart';

class BsFlutterModal {
  static const MethodChannel _channel =
      const MethodChannel('bs_flutter_modal');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
