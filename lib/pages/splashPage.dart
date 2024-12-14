import 'package:flutter/material.dart';

void main() {
  runApp(const LanguageApp());
}

class LanguageApp extends StatelessWidget {
  const LanguageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF410FA3), // Purple background color
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image/Icon
              Image.asset(
                'assets/images/img1.png', // Add your icon file here
                height: 150,
              ),
              const SizedBox(height: 20),
              // Text
              const Text(
                'Language App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
