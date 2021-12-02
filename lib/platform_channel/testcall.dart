import 'dart:async';

import 'package:flutter/services.dart';

class PlatformChannelCaller {
  static const MethodChannel _channel = MethodChannel('flutter.native/helper');

  static Future<String> testCall() async {
    try {
      final String response = await _channel.invokeMethod("testCall");
      return response;
    } catch (e) {
      throw e;
    }
  }
}