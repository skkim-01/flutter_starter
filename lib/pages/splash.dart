import 'package:flutter/material.dart';

import 'package:flutter_starter/widgets/colors/color_style.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() =>_SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback(
          (_) => _fetchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "SPLASH",
            style: TextStyle(
              fontSize: 18,
              color: ColorStyles.colorWhite,
            ),
          ),
        )
      ),
    );
  }

  void _fetchPage() async {
    /// await 2 seconds
    await Future.delayed(Duration(seconds: 3));
  }
}