import 'package:demo_blog/config/theme/app_colors.dart';
import 'package:demo_blog/ui/screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: Typography.blackRedmond.apply(
          bodyColor: AppColors.fontColor,
          fontFamily: 'Roboto',
        ),
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: const Profile(),
    );
  }
}
