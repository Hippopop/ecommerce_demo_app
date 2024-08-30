import 'package:flutter/material.dart';

import 'features/homepage/views/homepage.dart';
import 'services/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const Homepage(),
      title: 'E-Commerce Demo App',
      debugShowCheckedModeBanner: false,
    );
  }
}
