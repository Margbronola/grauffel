//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xffbd9d56, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffaa8d4d), //10%
      100: Color(0xff977e45), //20%
      200: Color(0xff846e3c), //30%
      300: Color(0xff715e34), //40%
      400: Color(0xff5f4f2b), //50%
      500: Color(0xff4c3f22), //60%
      600: Color(0xff392f1a), //70%
      700: Color(0xff261f11), //80%
      800: Color(0xff131009), //90%
      900: Color(0xff000000), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
