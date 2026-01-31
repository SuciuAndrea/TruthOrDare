import 'package:flutter/material.dart';
import 'dart:math';
import '../common/app_colors.dart';
import '../common/app_strings.dart';
import '../common/app_settings.dart';
import '../data/challenges_data.dart';
import '../models/challenge.dart';
import '../widgets/gradient_background.dart';
import '../widgets/challenge_card.dart';
import '../widgets/stats_button.dart';  // Import NOU

/// Ecranul de provocare - afișează provocarea/adevărul
/// Folosește StatefulWidget pentru state management
class ChallengeScreen extends StatefulWidget {
  final String categoryId;      // ID-ul categoriei
  final String challengeType;   // 'truth' sau 'dare'

  const ChallengeScreen({
    Key? key,
    required this.categoryId,
    required this.challengeType,
  }) : super(key: key);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  late List<Challenge> _challenges;      // Lista de provocări
  late Challenge _currentChallenge;      // Provocarea curentă
  late List<Color> _currentGradient;     // Gradient-ul curent
  final Random _random = Random();       // Generator random

  @override
  void initState() {
    super.initState();
    
    // Încărcăm provocările pentru această categorie
    _loadChallenges();
    
    // Încărcăm prima provocare
    _loadNewChallenge();
  }

  /// Încarcă provocările pentru categoria și tipul selectat
  void _loadChallenges() {
    final type = widget.challengeType == 'truth' 
        ? ChallengeType.truth 
        : ChallengeType.dare;
    
    _challenges = ChallengesData.getChallenges(widget.categoryId, type);
    
    // Verificăm dacă avem provocări
    if (_challenges.isEmpty) {
      // Fallback - întoarcem la ecranul anterior
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Nu există provocări pentru această categorie!')),
        );
      });
    }
  }

  /// Încarcă o nouă provocare random (fără incrementare)
  void _loadNewChallenge() {
    if (_challenges.isEmpty) return;
    
    setState(() {
      // Alegem o provocare random
      _currentChallenge = _challenges[_random.nextInt(_challenges.length)];
      
      // Alegem gradient-ul bazat pe indexul din provocare
      final gradients = widget.challengeType == 'truth'
          ? AppColors.truthGradients
          : AppColors.dareGradients;
      
      _currentGradient = gradients[_currentChallenge.gradientIndex % gradients.length];
      
      // NU incrementăm aici - doar butonul ✓ incrementează
    });
  }

  @override
  Widget build(BuildContext context) {
    final isTruth = widget.challengeType == 'truth';
    final accentColor = isTruth ? const Color(0xFF2563EB) : const Color(0xFFEF4444);
    
    return Scaffold(
      // Gradient animat care se schimbă la fiecare provocare
      body: GradientBackground(
        colors: _currentGradient,
        animate: true,  // Activăm animația
        child: SafeArea(
          child: SingleChildScrollView(  // ← Rezolvă overflow-ul
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 
                          MediaQuery.of(context).padding.top -
                          MediaQuery.of(context).padding.bottom,
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Card-ul cu provocarea
                    ChallengeCard(
                      challenge: _currentChallenge,
                      accentColor: accentColor,
                    ),
                    
                    const SizedBox(height: 30),
                    
                    // Row cu butoane: X - Stats - ✓
                    _buildStatsRow(isTruth, accentColor),
                    
                    const SizedBox(height: 16),
                    
                    // Butoane de acțiune
                    _buildActionButtons(isTruth, accentColor),
                    
                    const SizedBox(height: 20),
                    
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Construiește row-ul cu butoane X - Stats - ✓
  Widget _buildStatsRow(bool isTruth, Color accentColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Buton X (N-am făcut)
        _buildActionCircleButton(
          icon: Icons.close,
          color: const Color.fromARGB(255, 251, 156, 156),
          onPressed: _loadNewChallenge,  // Doar refresh, fără incrementare
          tooltip: AppStrings.skipTooltip,
        ),
        
        const SizedBox(width: 16),
        
        // Buton Stats (la mijloc) - cu callback pentru refresh
        StatsButton(
          isTruth: isTruth,
          onStatsChanged: () {
            // Când stats se resetează, refresh ecranul
            if (mounted) {
              setState(() {});
            }
          },
        ),
        
        const SizedBox(width: 16),
        
        // Buton ✓ (Am făcut)
        _buildActionCircleButton(
          icon: Icons.check,
          color: Colors.green,
          onPressed: _onChallengeCompleted,  // Incrementează + refresh
          tooltip: AppStrings.didItTooltip,
        ),
      ],
    );
  }

  /// Construiește un buton circular pentru acțiuni
  Widget _buildActionCircleButton({
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
    required String tooltip,
  }) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: color,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(
              icon,
              color: color,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }

  /// Apelat când user-ul a completat provocarea (✓)
  void _onChallengeCompleted() {
    if (_challenges.isEmpty) return;
    
    setState(() {
      // Alegem o provocare nouă random
      _currentChallenge = _challenges[_random.nextInt(_challenges.length)];
      
      // Alegem gradient-ul bazat pe indexul din provocare
      final gradients = widget.challengeType == 'truth'
          ? AppColors.truthGradients
          : AppColors.dareGradients;
      
      _currentGradient = gradients[_currentChallenge.gradientIndex % gradients.length];
      
      // Incrementăm contorul DOAR dacă au făcut provocarea
      if (widget.challengeType == 'truth') {
        AppSettings().incrementTruths();
      } else {
        AppSettings().incrementDares();
      }
      
      // setState() face deja refresh al întregului widget,
      // deci StatsButton se va actualiza automat
    });
  }
  Widget _buildActionButtons(bool isTruth, Color accentColor) {
    return Column(
      children: [
        // Buton pentru altă provocare
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: _loadNewChallenge,
            icon: const Icon(Icons.refresh, size: 24),
            label: Text(
              isTruth ? AppStrings.nextButton : AppStrings.nextDareButton,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: accentColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
        const SizedBox(height: 15),
        
        // Buton înapoi acasă
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
            icon: const Icon(Icons.home, size: 24),
            label: const Text(
              AppStrings.homeButton,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
              foregroundColor: Colors.grey[800],
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      ],
    );
  }

}