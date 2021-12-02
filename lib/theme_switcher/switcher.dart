import 'package:flutter/material.dart';

import 'package:flutter_starter/theme_switcher/themes.dart';

/// theme switcher with inherited widget
/// - https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html
/// - https://stackoverflow.com/questions/54757480/flutter-dynamic-theming

/// How to use?: Theme change dynamically:
///  - ThemeSwitcher.of(context).switchTheme();

/// Watch main.dart
/// - main
///  - ThemeSwitcherWidget
///   - ThemeSwitcher

/// Theme switcher with Inherited Widget
class ThemeSwitcher extends InheritedWidget {
  final _ThemeSwitcherWidgetState data;

  const ThemeSwitcher({
    Key? key,
    required this.data,
    required Widget child,
  })  : super(key: key, child: child);

  static _ThemeSwitcherWidgetState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeSwitcher>()!.data;

  @override
  bool updateShouldNotify(ThemeSwitcher old) {
    return this != old;
  }
}

/// Theme switcher widget: stateful
class ThemeSwitcherWidget extends StatefulWidget {
  final Widget child;

  ThemeSwitcherWidget({
    key,
    required this.child
  }) : super(key: key);

  @override
  _ThemeSwitcherWidgetState createState() => _ThemeSwitcherWidgetState();
}

/// State of theme switcher widget
class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  ThemeData themeData = Themes.currentTheme();

  void switchTheme() {
    setState(() {
      themeData = Themes.currentTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      data: this,
      child: widget.child,
    );
  }
}
