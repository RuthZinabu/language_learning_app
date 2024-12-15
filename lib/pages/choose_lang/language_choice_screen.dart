import 'package:flutter/material.dart';
import 'package:language_learning_app/pages/onboarding_Page.dart';
import 'package:language_learning_app/pages/home_page/home_screen.dart';

class LanguageSelectionApp extends StatelessWidget {
  const LanguageSelectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LanguageSelectionScreen(),
    );
  }
}

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {"name": "English", "flag": "assets/flags/us.png"},
    {"name": "French", "flag": "assets/flags/fr.png"},
    {"name": "German", "flag": "assets/flags/de.png"},
    {"name": "Hindi", "flag": "assets/flags/in.png"},
    {"name": "Korean", "flag": "assets/flags/kr.png"},
    {"name": "Italian", "flag": "assets/flags/it.png"},
    {"name": "Amharic", "flag": "assets/flags/et.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF410FA3),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnboardingPage(),
              ),
            );
          },
        ),
        title: const Text(
          'Completed 1/2',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'What Language do you want to learn?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLanguage = language['name']!;
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: selectedLanguage == language['name']
                          ? const Color(0xFF5BA890)
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selectedLanguage == language['name']
                            ? const Color(0xFF410FA3)
                            : Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            language['flag']!,
                            height: 45,
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          language['name']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedLanguage == language['name']
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF410FA3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
