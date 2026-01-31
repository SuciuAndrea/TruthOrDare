/// Centralizarea tuturor textelor din aplicație
/// Folosim const pentru performanță optimă
class AppStrings {
  // Constructor privat - nu vrem instanțe ale acestei clase
  AppStrings._();

  // ===== HOME SCREEN =====
  static const String appTitle = 'Adevăr sau Provocare';
  static const String homeSubtitle = 'Îndrăznește să joci?';
  static const String truthButton = '💭 Adevăr';
  static const String dareButton = '🔥 Provocare';

  // ===== CATEGORY SCREEN =====
  static const String selectCategoryTitle = 'Alege Categoria';
  static const String backButton = 'Înapoi';

  // ===== CHALLENGE SCREEN =====
  static const String truthTitle = 'Adevăr';
  static const String dareTitle = 'Provocare';
  static const String nextButton = 'Altă întrebare';
  static const String nextDareButton = 'Altă provocare';
  static const String skipButton = 'Skip întrebare';
  static const String skipDareButton = 'Skip provocare';
  static const String homeButton = 'Înapoi Acasă';
  static const String didItTooltip = 'Am făcut';
  static const String skipTooltip = 'Nu am făcut';
  
  // ===== STATISTICI =====
  static const String statsTitle = 'Statistici';
  static const String totalPlayed = 'Total Jucate';
  static const String totalTruths = 'Adevăruri';
  static const String totalDares = 'Provocări';
  static const String resetStats = 'Resetează';
  static const String resetConfirmTitle = 'Resetare Statistici';
  static const String resetConfirmMessage = 
      'Ești sigur că vrei să resetezi toate statisticile? '
      'Această acțiune nu poate fi anulată.';
  static const String cancel = 'Anulează';
  static const String resetButton = 'Resetează';
  static const String closeButton = 'Închide';
  static const String statsReset = '✓ Statistici resetate!';

  // ===== CATEGORII =====
  static const String categoryFriends = 'Prieteni';
  static const String categoryParty = 'Petrecere';
  static const String categorySchool = 'Școală';
  static const String categoryFamily = 'Familie';
  static const String categorySpicy = 'Picant';
  static const String categoryFunny = 'Amuzant';

  // ===== DESCRIERI CATEGORII =====
  static const String categoryFriendsDesc = 'Întrebări pentru prietenii apropiați';
  static const String categoryPartyDesc = 'Perfect pentru evenimente sociale';
  static const String categorySchoolDesc = 'Teme despre școală și viață';
  static const String categoryFamilyDesc = 'Întrebări family-friendly';
  static const String categorySpicyDesc = 'Pentru cei curajoși';
  static const String categoryFunnyDesc = 'Provocări amuzante garantat';
}