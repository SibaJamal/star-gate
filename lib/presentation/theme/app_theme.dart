import 'package:flutter/material.dart';


Color primaryColor = const Color(0xff0D0AA4);
Color secondaryColor = const Color(0xffB8B7D5);
Color midBlue = const Color(0xff3EB4E2);
Color secondaryBlueColor = const Color(0xff4EEDF8);
Color textGrey = const Color(0xffC8C8C8);
Color buttonSecondaryColor = const Color(0xffD9D9D9);

TextStyle titleTextStyle = const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,);


  class MyAppTheme {
  static Color backgroundColor = Colors.white;
  static Color primaryColor = const Color(0xff0D0AA4);
  static Color accentColor = const Color(0xffF4F4F9);
  static Color lightParticlesColor = const Color(0x44948282);

  const MyAppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    hintColor: accentColor,
    backgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(backgroundColor:primaryColor,titleTextStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );


}