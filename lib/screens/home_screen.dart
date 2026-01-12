import 'package:flutter/material.dart';
import 'challenge_screen.dart';
import '../widgets/choice_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF9333EA), // purple-600
              Color(0xFFEC4899), // pink-500
              Color(0xFFEF4444), // red-500
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header
                  const Icon(
                    Icons.stars,
                    size: 80,
                    color: Color(0xFFFDE047), // yellow-300
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Adevăr sau Provocare',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Îndrăznește să joci?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 60),
                  
                  // Buttons
                  ChoiceButton(
                    label: '👀 Adevăr',
                    backgroundColor: Colors.white,
                    textColor: const Color(0xFF9333EA),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChallengeScreen(
                            challengeType: 'truth',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  ChoiceButton(
                    label: '🔥 Provocare',
                    backgroundColor: const Color(0xFFFACC15), // yellow-400
                    textColor: const Color(0xFF581C87), // purple-900
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChallengeScreen(
                            challengeType: 'dare',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 60),
                  
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}