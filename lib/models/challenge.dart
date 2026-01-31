/// Model pentru provocări și adevăruri
/// Clasa tipizată cu toate proprietățile necesare
class Challenge {
  final String id;              // Identificator unic
  final String title;           // Titlu funny/catchy
  final String content;         // Conținutul provocării/adevărului
  final String description;     // Descriere/explicație suplimentară
  final String emoji;           // Emoji relevant
  final String categoryId;      // La ce categorie aparține
  final ChallengeType type;     // Adevăr sau Provocare
  final int gradientIndex;      // Index pentru gradient animat

  const Challenge({
    required this.id,
    required this.title,
    required this.content,
    required this.description,
    required this.emoji,
    required this.categoryId,
    required this.type,
    required this.gradientIndex,
  });

  /// Metodă pentru debugging
  @override
  String toString() {
    return 'Challenge(id: $id, title: $title, type: $type)';
  }
}

/// Enum pentru tipul de provocare
/// Mai curat decât să folosim String-uri
enum ChallengeType {
  truth,  // Adevăr
  dare,   // Provocare
}

/// Extension pentru a obține string-uri citibile
extension ChallengeTypeExtension on ChallengeType {
  String get displayName {
    switch (this) {
      case ChallengeType.truth:
        return 'Adevăr';
      case ChallengeType.dare:
        return 'Provocare';
    }
  }

  String get value {
    switch (this) {
      case ChallengeType.truth:
        return 'truth';
      case ChallengeType.dare:
        return 'dare';
    }
  }
}