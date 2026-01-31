import 'package:flutter/material.dart';

/// Widget custom pentru butoanele de alegere (Adevăr/Provocare)
/// CLASA (nu funcție!) pentru performanță optimă în Flutter
class ChoiceButton extends StatelessWidget {
  final String label;              // Textul butonului
  final Color backgroundColor;     // Culoarea de fundal
  final Color textColor;          // Culoarea textului
  final VoidCallback onPressed;   // Funcția apelată la click

  const ChoiceButton({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,  // Lățime completă
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 24,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 10,  // Shadow pentru efect de adâncime
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text cu emoji
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            // Săgeată
            Icon(
              Icons.arrow_forward,
              size: 28,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}