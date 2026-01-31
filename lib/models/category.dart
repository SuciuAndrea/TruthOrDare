import 'package:flutter/material.dart';

/// Model pentru categorii
/// Clasa tipizată pentru structurarea datelor
class Category {
  final String id;           // Identificator unic
  final String name;         // Numele categoriei
  final String description;  // Descriere scurtă
  final String emoji;        // Emoji reprezentativ
  final Color color;         // Culoarea categoriei

  const Category({
    required this.id,
    required this.name,
    required this.description,
    required this.emoji,
    required this.color,
  });

  /// Metodă pentru debugging și logging
  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }

  /// Verificare egalitate între două categorii
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Category && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}