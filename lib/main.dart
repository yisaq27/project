import 'package:flutter/material.dart';
import 'package:pop/core/config/theme/app_theme.dart';
import 'package:pop/peresentation/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
     debugShowCheckedModeBanner: false, // Remove this line to disable debug mode banner
      home: SplashPage(),
    );
  }
}
