import 'package:flutter/cupertino.dart';

class AppColors {
  //primary colors
  static const Color primary1 = Color(0xFF281c9d);
  static const Color primary2 = Color(0xFF5655b9);
  static const Color primary3 = Color(0xFFa8a3d7);
  static const Color primary4 = Color(0xFFf2f1f9);
  //neutral colors
  static const Color neutral1 = Color(0xFF343434);
  static const Color neutral2 = Color(0xFF898989);
  static const Color neutral3 = Color(0xFF989898);
  static const Color neutral4 = Color(0xFFcacaca);
  static const Color neutral5 = Color(0xFFe0e0e0);
  static const Color neutral6 = Color(0xFFffffff);
  //semantic color
  static const Color semantic1 = Color(0xFFff4267);
  static const Color semantic2 = Color(0xFF0890fe);
  static const Color semantic3 = Color(0xFFffaf2a);
  static const Color semantic4 = Color(0xFF52d5ba);
  static const Color semantic5 = Color(0xFFfb6b18);

  //other
  static const Color textFieldBorderColor = Color.fromRGBO(203, 203, 203, 1);
  static const Color checkBoxBorderColor = Color.fromRGBO(191, 191, 191, 1);
  static const Color forgotPasswordColor = Color.fromRGBO(151, 151, 151, 1);
  static const Color neutral1WithOpacity7 = Color.fromRGBO(52, 52, 52, 0.07);

  //shadows
  static const BoxShadow dropShadowCard = BoxShadow(
    color: neutral1WithOpacity7,
    blurRadius: 30.0,
  );
}
