import 'package:flutter/material.dart';

import 'package:flutter_starter/pages/splash.dart';

// flutter route keys
const String page_root                      = 'root';
const String page_splash                    = 'splash';

// app start page
var initRoute = routeMap[page_splash]!;

// set route map keys
var routeMap = <String, String> {
  page_root                                 : '/',
  page_splash                               : '/app/splash',
};

// set routes
var customRoutes = <String, WidgetBuilder> {
  routeMap[page_root]!  : (context) => Splash(),
  routeMap[page_splash]!  : (context) => Splash(),
};