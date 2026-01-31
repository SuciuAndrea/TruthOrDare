import 'package:flutter/material.dart';
import '../common/app_colors.dart';
import '../common/app_strings.dart';
import '../widgets/gradient_background.dart';
import '../widgets/choice_button.dart';
import 'category_screen.dart';

/// Ecranul principal - HomeScreen
/// Aici utilizatorul alege între Adevăr sau Provocare
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Folosim widget-ul custom pentru gradient
      body: GradientBackground(
        colors: AppColors.homeGradient,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header (titlu + iconițe)
                  _buildHeader(),
                  
                  const SizedBox(height: 60),
                  
                  // Butoane de alegere
                  _buildButtons(context),
                  
                  const SizedBox(height: 60),
                  
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Construiește header-ul cu iconițe și titlu
  /// Widget extras pentru a reduce build method
  Widget _buildHeader() {
    return const Column(
      children: [
        // Iconița stars
        Icon(
          Icons.stars,
          size: 80,
          color: Color(0xFFFDE047), // galben
        ),
        SizedBox(height: 20),
        
        // Titlu principal
        Text(
          AppStrings.appTitle,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        
        // Subtitlu
        Text(
          AppStrings.homeSubtitle,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  /// Construiește butoanele de alegere
  /// Widget extras pentru lizibilitate
  Widget _buildButtons(BuildContext context) {
    return Column(
      children: [
        // Buton Adevăr
        ChoiceButton(
          label: AppStrings.truthButton,
          backgroundColor: AppColors.white,
          textColor: const Color(0xFF9333EA),
          onPressed: () => _navigateToCategory(context, 'truth'),
        ),
        const SizedBox(height: 20),
        
        // Buton Provocare
        ChoiceButton(
          label: AppStrings.dareButton,
          backgroundColor: const Color(0xFFFACC15),
          textColor: const Color(0xFF581C87),
          onPressed: () => _navigateToCategory(context, 'dare'),
        ),
      ],
    );
  }



  /// Navigare către ecranul de categorii
  /// Metoda privată pentru separarea logicii
  void _navigateToCategory(BuildContext context, String type) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryScreen(challengeType: type),
      ),
    );
  }
}