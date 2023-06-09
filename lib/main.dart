import 'package:daily_expense/shared/utils/theme.dart';
import 'package:flutter/material.dart';
import 'pages/splash_screen/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: MyAppTheme.theme,
      home: const SplashScreen(),
    );
  }
}