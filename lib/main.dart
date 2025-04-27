import 'package:athlete_app/core/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart'; // <== Import your theme

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athlete App',
      theme: AppTheme.lightTheme, // Light theme
      darkTheme: AppTheme.darkTheme, // Dark theme
      themeMode: ThemeMode.system, // Follow device system setting
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    body: Center(
      child: Container(
        width: SizeConfig.widthMultiplier * 50, // 50% of screen width
        height: SizeConfig.heightMultiplier * 20, // 20% of screen height
        color: Colors.blue,
      ),
    ),
  ), // Your first screen
    );
  }
}
