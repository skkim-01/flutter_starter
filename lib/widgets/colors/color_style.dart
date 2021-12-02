import 'package:flutter/material.dart';

class ColorStyles {
  /// Primary
  static const neonBlue70 = Color.fromRGBO(26, 46, 255, 1);
  static const neonBlue60 = Color.fromRGBO(90, 105, 255, 1);
  static const neonBlue50 = Color.fromRGBO(117, 129, 255, 1);
  static const neonBlue40 = Color.fromRGBO(131, 142, 255, 1);
  static const neonBlue30 = Color.fromRGBO(150, 159, 255, 1);
  static const neonBlue20 = Color.fromRGBO(175, 183, 255, 1);
  static const neonBlue10 = Color.fromRGBO(212, 216, 255, 1);
  static const neonBlue5  = Color.fromRGBO(243, 244, 255, 1);

  /// Secondary
  static const hotPink70 = Color.fromRGBO(255, 37, 119, 1);
  static const hotPink60 = Color.fromRGBO(255, 92, 153, 1);
  static const hotPink50 = Color.fromRGBO(255, 135, 180, 1);
  static const hotPink40 = Color.fromRGBO(255, 158, 194, 1);
  static const hotPink30 = Color.fromRGBO(255, 185, 211, 1);
  static const hotPink20 = Color.fromRGBO(255, 205, 224, 1);
  static const hotPink10 = Color.fromRGBO(255, 224, 236, 1);
  static const hotPink5  = Color.fromRGBO(255, 240, 246, 1);

  /// Others
  static const darkPurple = Color.fromRGBO(19, 9, 38, 1);
  static const surface = Color.fromRGBO(241, 241, 241, 1);
  static const tomatoRed = Color.fromRGBO(255, 94, 94, 1);
  static const lightPurple = Color.fromRGBO(173, 164, 192, 1);

  /// Gradient
  static const mainGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color> [
      Color.fromRGBO(255, 92, 153, 1),
      Color.fromRGBO(90, 105, 255, 1),
    ]
  );

  static const subGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color> [
        Color.fromRGBO(149, 238, 173, 1),
        Color.fromRGBO(47, 194, 240, 1),
      ]
  );

  static const walletGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color> [
        Color.fromRGBO(90, 127, 255, 1),
        Color.fromRGBO(213, 92, 255, 1),
      ]
  );

  /// Baseline
  static const baseLineGray5 = Color.fromRGBO(250, 250, 251, 1);
  static const baseLineGray10 = Color.fromRGBO(240, 241, 244, 1);
  static const baseLineGray20 = Color.fromRGBO(218, 221, 223, 1);
  static const baseLineGray30 = Color.fromRGBO(201, 205, 209, 1);
  static const baseLineGray40 = Color.fromRGBO(179, 184, 189, 1);
  static const baseLineGray50 = Color.fromRGBO(154, 160, 167, 1);
  static const baseLineGray60 = Color.fromRGBO(118, 125, 133, 1);
  static const baseLineGray70 = Color.fromRGBO(81, 87, 94, 1);
  static const baseLineGray80 = Color.fromRGBO(58, 62, 68, 1);
  static const baseLineGray90 = Color.fromRGBO(34, 36, 41, 1);
  static const baseLineGray100 = Color.fromRGBO(24, 24, 24, 1);

  /// White
  static const colorWhite = Color.fromRGBO(255, 255, 255, 1);

  /// Black
  static const colorBlack = Color.fromRGBO(0, 0, 0, 1);

  /// Background
  static const darkBackground = Color.fromRGBO(14, 5, 32, 1);
  static const lightBlack = Color.fromRGBO(48, 37, 70, 1);
  static const midBlack = Color.fromRGBO(33, 21, 58, 1);

  /// Error
  static const errorRed = Color.fromRGBO(255, 33, 33, 1);

  /// Verified
  static const verifiedBrightGreen = Color.fromRGBO(38, 243, 206, 1);
  static const verifiedLightGreen = Color.fromRGBO(200, 245, 237, 1);
}