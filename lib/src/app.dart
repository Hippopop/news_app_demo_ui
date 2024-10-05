import 'package:flutter/material.dart';
import 'package:news_app_demo/src/constants/configs/app_config.dart';
import 'package:news_app_demo/src/features/homepage/views/homepage.dart';
import 'package:news_app_demo/src/services/theme/dark/dark_theme.dart';
import 'package:news_app_demo/src/services/theme/light/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Homepage(),
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
