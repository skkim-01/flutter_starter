import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:flutter_starter/theme_switcher/switcher.dart';
import 'package:flutter_starter/app_preference/app_instance.dart';
import 'package:flutter_starter/routes/custom_navigator.dart';
import 'package:flutter_starter/routes/custom_router.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await _orchestration();

  /// Prevent landscape mode
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    ThemeSwitcherWidget(
      child: MyApp(),
    ),
  );
}

_orchestration() async {
  /// Init app instance data
  await AppInstance().start();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOAuthOpened = false;

  @override
  initState() {
    super.initState();

    /// Switching theme
    WidgetsBinding.instance!.addPostFrameCallback(
          (_) => ThemeSwitcher.of(context).switchTheme(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Publish did wallet',
      navigatorKey: CustomNavigator().getNavigatorKey(),
      initialRoute: initRoute,
      theme: ThemeSwitcher.of(context).themeData,
      routes: customRoutes,
    );
  }

}
