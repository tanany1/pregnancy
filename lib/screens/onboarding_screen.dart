import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink[200]!, Colors.orange[100]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Congratulations!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Pregnancy - is a special period in your life, full of new experiences and emotions. At this time you have to take good care of your health and your baby’s health. To make your life easier during this important period, we have created this app, which will help you maintain good health and control the growing process of your baby. We strive to help you at all stages of the pregnancy, so that you can enjoy the expectation of the baby.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[300],
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text('Next', style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}