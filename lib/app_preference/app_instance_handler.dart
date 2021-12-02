import 'package:flutter_starter/app_preference/app_preference.dart';

class AppInstanceHandler {
  static Future<dynamic> getValue(String k, dynamic defaultValue) async {
    dynamic v = await AppPreference().getValue(k);
    if ( null == v ) {
      AppPreference().setValue(k, defaultValue);
      return defaultValue;
    } else {
      return v;
    }
  }
}