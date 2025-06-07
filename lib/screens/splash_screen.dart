import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset('assets/splash.png'), // Replace with your splash asset
      ),
    );
  }
}