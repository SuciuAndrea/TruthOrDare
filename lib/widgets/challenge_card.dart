import 'package:flutter/material.dart';
import '../models/challenge.dart';

/// Widget pentru afișarea provocării/adevărului
/// Card detaliat cu titlu, emoji, conținut și descriere
class ChallengeCard extends StatelessWidget {
  final Challenge challenge;      // Provocarea de afișat
  final Color accentColor;       // Culoarea accent (blue pentru truth, red pentru dare)

  const ChallengeCard({
    Key? key,
    required this.challenge,
    required this.accentColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Secțiunea header: Emoji + Titlu
          _buildHeader(),
          
          const SizedBox(height: 30),
          
          // Conținutul principal (provocarea/adevărul)
          _buildContent(),
          
          const SizedBox(height: 20),
          
          // Descrierea/Explicația
          _buildDescription(),
        ],
      ),
    );
  }

  /// Construiește header-ul cu emoji și titlu
  Widget _buildHeader() {
    return Column(
      children: [
        // Emoji mare
        Text(
          challenge.emoji,
          style: const TextStyle(fontSize: 60),
        ),
        const SizedBox(height: 12),
        
        // Titlu funny
        Text(
          challenge.title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: accentColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  /// Construiește conținutul principal
  Widget _buildContent() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        challenge.content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black87,
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Construiește descrierea/explicația
  Widget _buildDescription() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: accentColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: accentColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Icon info
          Icon(
            Icons.info_outline,
            color: accentColor,
            size: 20,
          ),
          const SizedBox(width: 12),
          
          // Text descriere
          Expanded(
            child: Text(
              challenge.description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.4,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}