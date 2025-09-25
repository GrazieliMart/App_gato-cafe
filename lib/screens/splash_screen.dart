import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6e6dc),
      body: SizedBox.expand( // ocupa toda a tela
        child: Image.asset(
          'assets/images/background-splash_screen.png',
          fit: BoxFit.cover, // cobre toda a tela mantendo proporção
        ),
      ),
    );
  }
}
