import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///[BuildContext] extensions for [Theme] Utilities!
extension ThemeGetter on BuildContext {
  ///[Theme] Root for this [BuildContext]!
  ThemeData get theme => Theme.of(this);

  ///[TextTheme] Root for this [BuildContext]!
  TextTheme get textTheme => theme.textTheme;

  ///Checks if [Brightness] is dark!
  bool get isDarkTheme => theme.brightness == Brightness.dark;
}

final appTheme = ThemeData.dark(useMaterial3: false).copyWith(
  hintColor: accentColor,
  primaryColor: primaryColor,
  primaryColorDark: backgroundColor,
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    toolbarHeight: 80,
    backgroundColor: backgroundColor,
  ),
  textTheme: GoogleFonts.interTextTheme(
    const TextTheme(
      bodySmall: TextStyle(fontSize: 10),
      titleMedium: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  iconTheme: const IconThemeData(size: 32, color: textColor),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const StadiumBorder(),
      maximumSize: const Size.fromHeight(80),
      foregroundColor: textColor,
      backgroundColor: backgroundColor,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    selectedItemColor: textColor,
    unselectedItemColor: secondaryText,
    backgroundColor: extraBackground,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
  }),
);
