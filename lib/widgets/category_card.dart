import 'package:flutter/material.dart';
import '../models/category.dart';

/// Widget pentru card-ul de categorie
/// Folosim CLASA pentru widget extrase (nu funcție!)
class CategoryCard extends StatelessWidget {
  final Category category;        // Categoria de afișat
  final VoidCallback onTap;      // Acțiunea la tap

  const CategoryCard({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.17), 
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: category.color,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Emoji mare
            Text(
              category.emoji,
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 12),
            
            // Numele categoriei
            Text(
              category.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, 

              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            
            // Descrierea
            Text(
              category.description,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 255, 254, 254),
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,  // Taie textul dacă e prea lung
            ),
          ],
        ),
      ),
    );
  }
}