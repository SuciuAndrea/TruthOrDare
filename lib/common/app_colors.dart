import 'package:flutter/material.dart';

/// Toate culorile și gradient-urile aplicației
/// Folosim const pentru performanță
class AppColors {
  AppColors._();

  // ===== CULORI PENTRU ADEVĂR (Pastelate) =====
  static const List<List<Color>> truthGradients = [
    // Gradient 1: Roz pal -> Lavandă
    [Color(0xFFFFB3D9), Color(0xFFB3A1FF), Color(0xFFA8D8FF)],
    // Gradient 2: Piersică -> Mentă
    [Color(0xFFFFCBA4), Color(0xFFB4E7CE), Color(0xFFA8E6CF)],
    // Gradient 3: Lămâie -> Bleu
    [Color(0xFFFFF9C4), Color(0xFFB3E5FC), Color(0xFFB2DFDB)],
    // Gradient 4: Trandafir -> Lila
    [Color(0xFFF8BBD0), Color(0xFFE1BEE7), Color(0xFFD1C4E9)],
    // Gradient 5: Coral -> Aqua
    [Color(0xFFFFCCBC), Color(0xFFB2EBF2), Color(0xFFB2DFDB)],
  ];

  // ===== CULORI PENTRU PROVOCARE (Aprinse) =====
  static const List<List<Color>> dareGradients = [
    // Gradient 1: Roșu intens -> Portocaliu
    [Color(0xFFFF1744), Color(0xFFFF6D00), Color(0xFFFF9100)],
    // Gradient 2: Magenta -> Roșu aprins
    [Color(0xFFE91E63), Color(0xFFF44336), Color(0xFFFF5722)],
    // Gradient 3: Violet -> Roșu
    [Color(0xFF9C27B0), Color(0xFFE91E63), Color(0xFFFF1744)],
    // Gradient 4: Portocaliu -> Galben intens
    [Color(0xFFFF6F00), Color(0xFFFF9800), Color(0xFFFFB300)],
    // Gradient 5: Roșu închis -> Portocaliu intens
    [Color(0xFFC62828), Color(0xFFD84315), Color(0xFFE65100)],
  ];

  // ===== GRADIENT HOME =====
  static const List<Color> homeGradient = [
    Color(0xFF9333EA), // purple-600
    Color(0xFFEC4899), // pink-500
    Color(0xFFEF4444), // red-500
  ];

  // ===== CULORI CATEGORII =====
  static const Color categoryFriends = Color(0xFF4CAF50); // Verde
  static const Color categoryParty = Color(0xFFFF9800);   // Portocaliu
  static const Color categorySchool = Color(0xFF2196F3);  // Albastru
  static const Color categoryFamily = Color(0xFF9C27B0);  // Violet
  static const Color categoryDeep = Color.fromARGB(255, 79, 213, 240);   // Roșu
  static const Color categoryFunny = Color(0xFFFFEB3B);   // Galben

  // ===== CULORI GENERALE =====
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Color(0xFF9E9E9E);
  static const Color greyLight = Color(0xFFF5F5F5);
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
}