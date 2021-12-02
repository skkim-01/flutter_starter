import 'package:flutter_starter/app_preference/app_instance_handler.dart';
import 'package:flutter_starter/app_preference/app_preference.dart';
import 'package:flutter_starter/utils/klog.dart';

class AppInstance {
  factory AppInstance() => _instance;
  static final AppInstance _instance = AppInstance._init();

  // initialize: app start
  AppInstance._init();

  /// start at splash/intro page
  start() async {
    await _initValues();

    if ( false == isAppValueInitialized() ) {
      firstSettings();
    }
  }

  /// Loading data from shared preference
  _initValues() async {
    bInitialized				= await AppInstanceHandler.getValue(keyInit, false);
    bDarkTheme					= await AppInstanceHandler.getValue(keyIsDarkTheme, true);
  }

  /// check shared_preference is initialized
  bool? bInitialized;
  /// dark theme
  bool? bDarkTheme;

  /// Function for debugging
  printData() {
    klog("init: $bInitialized");
    klog("theme: $bDarkTheme");
  }

  /// set default shared_preference values
  firstSettings() {
    setTheme(true);
  }

  isAppValueInitialized() => bInitialized;
  isDarkTheme() => bDarkTheme;

  setInitialized(bool b) {
    bInitialized = b;
    AppPreference().setValue(keyInit, b);
  }

  changeTheme() {
    bDarkTheme = !bDarkTheme!;
    AppPreference().setValue(keyIsDarkTheme, bDarkTheme);
  }

  changeThemeBool(bool themeState) {
    bDarkTheme = themeState;
    AppPreference().setValue(keyIsDarkTheme, bDarkTheme);
  }

  setTheme(bool isDark) {
    bDarkTheme = isDark;
    AppPreference().setValue(keyIsDarkTheme, isDark);
  }

}