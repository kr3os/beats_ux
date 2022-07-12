

import 'package:flutter/material.dart';

///==================== [ Size ]========================///
extension MediaQueryValues on BuildContext {
  double get mqWidth => MediaQuery.of(this).size.width;
  double get mqHeight => MediaQuery.of(this).size.height;

}


///==================== [ Fonts ]========================///
class Fonts {
  static const String raleway = 'Raleway';
}


///==================== [ TextStyles ]========================///
class TextStyles {
  static const TextStyle raleway = TextStyle(fontFamily: Fonts.raleway);
  static TextStyle buttonText1 = 
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
  static TextStyle buttonText2 = 
const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
  static TextStyle h1 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
  static TextStyle h2 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle body1 = raleway.copyWith(color: const Color(0xFF42A5F5));
}



///==================== [ Colors ]========================///
class DefualtTheme {
  static Color primary = const Color(0xFF42A5F5);
}