import 'package:flutter/material.dart';

void main() {
  runApp(const onboardingPage());
}

class onboardingPage extends StatelessWidget {
  const onboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // White background color
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top Image/Icon
            Image.asset(
              'assets/images/img2.png', // Add your image file here
              height: 200,
            ),
            const SizedBox(height: 20),
            // Page Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Main Text
            const Text(
              'Confidence in your words',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // Sub Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'With conversation-based learning, you\'ll be talking from lesson one',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4A1D92), // Purple button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Choose a language',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Footer Text
            const Text.rich(
              TextSpan(
                text: 'Already a Titolearn user? ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                      color: Color(0xFF4A1D92),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
