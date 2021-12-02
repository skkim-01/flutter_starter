import 'package:flutter/material.dart';

class CustomNavigator {
  factory CustomNavigator() => _instance;
  static final CustomNavigator _instance = CustomNavigator._init();

  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  CustomNavigator._init();

  GlobalKey<NavigatorState> getNavigatorKey() {
    return _navigatorKey;
  }

  Future<dynamic> push(String routeName, [Object? passedData]) async {
    return await _navigatorKey.currentState!.pushNamed(routeName, arguments: passedData);
  }

  void pop([dynamic result]) {
    _navigatorKey.currentState!.pop(result);
  }

  void replace(String routeName, [Object? passedData]) {
    _navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: passedData);
  }

  void popUntil(String routeName) {
    _navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  void popAllAndPush(String routeName, [Object? passedData]) {
    _navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (_) => false, arguments: passedData);
  }
}