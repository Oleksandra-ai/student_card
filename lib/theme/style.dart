import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyle {
  static Color bgColor = const Color(0xFFeeedf2);
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
    fontFamily: 'Montserrat',
  );
  static TextStyle headlineStyle1 = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: textColor
  );
  static TextStyle headlineStyle2 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headlineStyle3 = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 17,
    fontWeight: FontWeight.w500,

  );
}