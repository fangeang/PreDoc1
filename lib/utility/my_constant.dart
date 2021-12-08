import 'package:flutter/material.dart';

class MyConstant {
  // field
  static String appName = 'Predoc';
  static Color primary = const Color(0xff8bc34a);
  static Color light = const Color(0xffbef67a);
  static Color dark = const Color(0xff5a9216);

  // method
  BoxDecoration planBox() => BoxDecoration(color: light);

  BoxDecoration whiteBox() => BoxDecoration(color: Colors.white54);

  BoxDecoration gradienBox() => BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, -0.5),
          radius: 1.0,
          colors: [Colors.white, primary],
        ),
      );

  TextStyle h1style() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: dark,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: dark,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: dark,
      );
  TextStyle h4Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: dark,
      );
}
