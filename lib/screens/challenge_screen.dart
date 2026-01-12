import 'package:flutter/material.dart';
import 'dart:math';
import '../models/challenge_data.dart';

class ChallengeScreen extends StatefulWidget {
  final String challengeType;

  const ChallengeScreen({
    Key? key,
    required this.challengeType,
  }) : super(key: key);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  late String currentChallenge;
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    _loadNewChallenge();
  }

  void _loadNewChallenge() {
    setState(() {
      final list = widget.challengeType == 'truth'
          ? ChallengeData.truths
          : ChallengeData.dares;
      currentChallenge = list[random.nextInt(list.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    final isTruth = widget.challengeType == 'truth';
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isTruth
                ? [
                    const Color(0xFF2563EB), // blue-600
                    const Color(0xFF9333EA), // purple-500
                    const Color(0xFFEC4899), // pink-500
                  ]
                : [
                    const Color(0xFFF97316), // orange-500
                    const Color(0xFFEF4444), // red-500
                    const Color(0xFFDB2777), // pink-600
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
                  // Challenge Card
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        // Icon
                        Text(
                          isTruth ? '👀' : '🔥',
                          style: const TextStyle(fontSize: 80),
                        ),
                        const SizedBox(height: 20),
                        
                        // Title
                        Text(
                          isTruth ? 'Adevăr' : 'Provocare',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: isTruth
                                ? const Color(0xFF2563EB)
                                : const Color(0xFFEF4444),
                          ),
                        ),
                        const SizedBox(height: 30),
                        
                        // Challenge Text
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            currentChallenge,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Refresh Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _loadNewChallenge,
                      icon: const Icon(Icons.refresh, size: 24),
                      label: Text(
                        'Altă ${isTruth ? 'întrebare' : 'provocare'}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isTruth
                            ? const Color(0xFF2563EB)
                            : const Color(0xFFEF4444),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  // Back Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.home, size: 24),
                      label: const Text(
                        'Înapoi Acasă',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.grey[800],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 8,
                      ),
                    ),
                  ),
                  
                  
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}