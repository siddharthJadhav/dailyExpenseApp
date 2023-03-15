import 'dart:async';
import 'package:daily_expense/pages/home/components/home.dart';
import 'package:daily_expense/pages/login/components/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 0), () {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => const HomeView()));
    });

    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'assets/images/calling_logo.png',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
