import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Text('Dashboard',
        textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF696969)
          ),
        ),
        )
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}