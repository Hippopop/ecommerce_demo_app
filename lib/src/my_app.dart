import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/homepage/views/homepage.dart';
import 'services/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: appTheme,
      home: const Homepage(),
      title: 'E-Commerce Demo App',
      debugShowCheckedModeBanner: false,
    );
  }
}
