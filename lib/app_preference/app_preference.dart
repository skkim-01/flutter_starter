import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_starter/utils/klog.dart';

// shared preference key constants
const String keyInit            = 'init';
const String keyIsDarkTheme     = 'is_dark_theme';

// preference key map
var prefKeyMap = <String, String> {
  keyInit             : 'pref_init',
  keyIsDarkTheme      : 'pref_is_dark_theme',
};

// app preference singleton class
class AppPreference {
  factory AppPreference() => _instance;
  static final AppPreference _instance = AppPreference._init();

  SharedPreferences? _sharedPreferences;

  AppPreference._init() {
    _getPreference();
  }

  _getPreference() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  getValue(String key) async {
    await _getPreference();
    return _sharedPreferences!.get(key);
  }

  void setValue(String k, dynamic v) async {
    await _getPreference();

    if ( v is String ) {
      await _sharedPreferences!.setString(k, v);
    } else if ( v is int ) {
      await _sharedPreferences!.setInt(k, v);
    } else if ( v is double ) {
      await _sharedPreferences!.setDouble(k, v);
    } else if ( v is bool ) {
      await _sharedPreferences!.setBool(k, v);
    } else if ( v is List<String> ) {
      await _sharedPreferences!.setStringList(k, v);
    } else {
      klog("Unsupported Value Type!");
    }
  }

  // print preference values
  void printValues() async {
    await _getPreference();

    _sharedPreferences!.getKeys().forEach((key) async {
      klog('$key: ${await getValue(key)}');
    });
  }

  clear() async {
    await _getPreference();
    _sharedPreferences!.clear();
  }

  // reset values
  reset() async {
    await _getPreference();
    await _sharedPreferences!.clear();
  }

  // check first start
  Future<bool> isAppValueInitialized() async {
    return await getValue(keyInit) ?? false;
  }

  getTheme() async {
    await _getPreference();
    return _sharedPreferences!.getBool(keyIsDarkTheme) ?? true;
  }
}