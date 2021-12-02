import 'package:flutter/foundation.dart';

void klog([dynamic message]) {
  if (!kDebugMode) return;
  final line = StackTrace.current.toString().split('\n')[1].substring(8);
  if (message != null) {
    message.toString().split('\n').forEach((e) => print('$line >$e'));
  } else
    print(line);
}