import 'package:flutter/material.dart';
import '../common/app_strings.dart';
import '../data/challenges_data.dart';
import '../widgets/gradient_background.dart';
import '../widgets/category_card.dart';
import 'challenge_screen.dart';

/// Ecranul de alegere a categoriei
/// Afișează toate categoriile disponibile în grid
class CategoryScreen extends StatelessWidget {
  final String challengeType;  // 'truth' sau 'dare'

  const CategoryScreen({
    Key? key,
    required this.challengeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determinăm dacă e truth sau dare pentru gradient
    final isTruth = challengeType == 'truth';
    
    return Scaffold(
      body: GradientBackground(
        colors: isTruth
            ? [const Color(0xFF2563EB), const Color(0xFF9333EA), const Color(0xFFEC4899)]
            : [const Color(0xFFF97316), const Color(0xFFEF4444), const Color(0xFFDB2777)],
        child: SafeArea(
          child: Column(
            children: [
              // Header cu titlu și buton înapoi
              _buildHeader(context),
              
              // Grid cu categorii
              Expanded(
                child: _buildCategoriesGrid(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Construiește header-ul cu titlu și buton back
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          // Buton înapoi
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            iconSize: 28,
          ),
          const SizedBox(width: 12),
          
          // Titlu
          Expanded(
            child: Text(
              AppStrings.selectCategoryTitle,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Construiește grid-ul cu categorii
  Widget _buildCategoriesGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,        // 2 coloane
          childAspectRatio: 0.85,   // Raport lățime/înălțime
          crossAxisSpacing: 16,     // Spațiu între coloane
          mainAxisSpacing: 16,      // Spațiu între rânduri
        ),
        itemCount: ChallengesData.categories.length,
        itemBuilder: (context, index) {
          final category = ChallengesData.categories[index];
          
          return CategoryCard(
            category: category,
            onTap: () => _navigateToChallenge(context, category.id),
          );
        },
      ),
    );
  }

  /// Navigare către ecranul de provocare
  void _navigateToChallenge(BuildContext context, String categoryId) {
    // Navigăm către ecranul de provocare
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChallengeScreen(
          categoryId: categoryId,
          challengeType: challengeType,
        ),
      ),
    );
  }
}