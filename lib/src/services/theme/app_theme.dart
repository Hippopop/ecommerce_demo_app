import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData.dark(useMaterial3: false).copyWith(
  hintColor: accentColor,
  primaryColor: primaryColor,
  primaryColorDark: backgroundColor,
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    toolbarHeight: 80,
    backgroundColor: backgroundColor,
  ),
  iconTheme: const IconThemeData(size: 32),
  textTheme: GoogleFonts.interTextTheme(),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
  }),
);
