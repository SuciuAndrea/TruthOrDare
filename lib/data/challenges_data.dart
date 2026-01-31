import '../models/category.dart';
import '../models/challenge.dart';
import '../common/app_colors.dart';
import '../common/app_strings.dart';

/// Date statice pentru provocări și categorii
/// Toate provocările sunt organizate pe categorii
class ChallengesData {
  ChallengesData._();

  // ===== CATEGORII =====
  static const List<Category> categories = [
    Category(
      id: 'friends',
      name: AppStrings.categoryFriends,
      description: AppStrings.categoryFriendsDesc,
      emoji: '👥',
      color: AppColors.categoryFriends,
    ),
    Category(
      id: 'party',
      name: AppStrings.categoryParty,
      description: AppStrings.categoryPartyDesc,
      emoji: '🎉',
      color: AppColors.categoryParty,
    ),
    Category(
      id: 'school',
      name: AppStrings.categorySchool,
      description: AppStrings.categorySchoolDesc,
      emoji: '📚',
      color: AppColors.categorySchool,
    ),
    Category(
      id: 'family',
      name: AppStrings.categoryFamily,
      description: AppStrings.categoryFamilyDesc,
      emoji: '👨‍👩‍👧',
      color: AppColors.categoryFamily,
    ),
   Category(
  id: 'deep',
  name: 'Deep',
  description: 'Întrebări și provocări mai profunde',
  emoji: '🧠',
  color: AppColors.categoryDeep,
),

    Category(
      id: 'funny',
      name: AppStrings.categoryFunny,
      description: AppStrings.categoryFunnyDesc,
      emoji: '😂',
      color: AppColors.categoryFunny,
    ),
  ];

  // ===== ADEVĂRURI - PRIETENI =====
  static const List<Challenge> truthsFriends = [
    Challenge(
      id: 'tf1',
      title: 'Încredere Totală',
      content: 'Care prieten te cunoaște cel mai bine?',
      description: 'De ce tocmai el/ea?',
      emoji: '🤫',
      categoryId: 'friends',
      type: ChallengeType.truth,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'tf2',
      title: 'Atracție Incomodă',
      content: 'Ai fost atras vreodată de cineva apropiat grupului?',
      description: 'Fără nume.',
      emoji: '💘',
      categoryId: 'friends',
      type: ChallengeType.truth,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'tf3',
      title: 'Vorbe Grele',
      content: 'Ai vorbit vreodată urât despre un prieten?',
      description: 'Ce te-a enervat atunci?',
      emoji: '🗣️',
      categoryId: 'friends',
      type: ChallengeType.truth,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'tf4',
      title: 'Loialitate',
      content: 'Cine din grup crezi că ar ceda primul sub presiune?',
      description: 'Inclusiv tu?',
      emoji: '💸',
      categoryId: 'friends',
      type: ChallengeType.truth,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'tf5',
      title: 'Invidie Mică',
      content: 'Ce lucru ai vrea să ai de la un prieten?',
      description: 'Talent, noroc sau viață?',
      emoji: '💚',
      categoryId: 'friends',
      type: ChallengeType.truth,
      gradientIndex: 4,
    ),
  ];

  // ===== PROVOCĂRI - PRIETENI =====
  static const List<Challenge> daresFriends = [
    Challenge(
      id: 'df1',
      title: 'Compliment Ciudat',
      content: 'Fă un compliment neobișnuit fiecăruia',
      description: 'Fără complimente clasice.',
      emoji: '🥴',
      categoryId: 'friends',
      type: ChallengeType.dare,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'df2',
      title: 'Mesaj Suspans',
      content: 'Trimite mesajul „Trebuie să vorbim” cuiva',
      description: 'Nu explica nimic 5 minute.',
      emoji: '📱',
      categoryId: 'friends',
      type: ChallengeType.dare,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'df3',
      title: 'Imitație',
      content: 'Imită un obicei al cuiva din grup',
      description: 'Fără să spui nume.',
      emoji: '🎭',
      categoryId: 'friends',
      type: ChallengeType.dare,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'df4',
      title: 'Adevăr Brut',
      content: 'Spune un lucru sincer despre fiecare',
      description: 'Scurt și direct.',
      emoji: '💣',
      categoryId: 'friends',
      type: ChallengeType.dare,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'df5',
      title: 'Galerie Deschisă',
      content: 'Arată ultimele 5 poze din telefon',
      description: 'Explică una.',
      emoji: '📸',
      categoryId: 'friends',
      type: ChallengeType.dare,
      gradientIndex: 4,
    ),
  ];

  // ===== ADEVĂRURI - PETRECERE =====
  static const List<Challenge> truthsParty = [
    Challenge(
      id: 'tp1',
      title: 'Seară Haotică',
      content: 'Care e cea mai haotică petrecere la care ai fost?',
      description: 'Ce ai învățat?',
      emoji: '🍺',
      categoryId: 'party',
      type: ChallengeType.truth,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'tp2',
      title: 'Social Mode',
      content: 'Devii mai sociabil la petreceri?',
      description: 'Sau mai retras?',
      emoji: '💋',
      categoryId: 'party',
      type: ChallengeType.truth,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'tp3',
      title: 'Petrecere Ratată',
      content: 'La ce petrecere ai vrut să pleci devreme?',
      description: 'De ce?',
      emoji: '😔',
      categoryId: 'party',
      type: ChallengeType.truth,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'tp4',
      title: 'Impuls',
      content: 'Ai făcut vreodată ceva spontan la o petrecere?',
      description: 'Regreți?',
      emoji: '😘',
      categoryId: 'party',
      type: ChallengeType.truth,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'tp5',
      title: 'Dimineața După',
      content: 'Care e cea mai ciudată dimineață după o petrecere?',
      description: 'Unde te-ai trezit?',
      emoji: '🤕',
      categoryId: 'party',
      type: ChallengeType.truth,
      gradientIndex: 4,
    ),
  ];

  // ===== PROVOCĂRI - PETRECERE =====
  static const List<Challenge> daresParty = [
    Challenge(
      id: 'dp1',
      title: 'Dans Instant',
      content: 'Dansează 1 minut fără pauză',
      description: 'Pe orice melodie.',
      emoji: '💃',
      categoryId: 'party',
      type: ChallengeType.dare,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'dp2',
      title: 'Compliment Public',
      content: 'Fă un compliment sincer cuiva',
      description: 'Privire în ochi.',
      emoji: '😍',
      categoryId: 'party',
      type: ChallengeType.dare,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'dp3',
      title: 'Mini Karaoke',
      content: 'Cântă o strofă cunoscută',
      description: 'Voce tare.',
      emoji: '🎤',
      categoryId: 'party',
      type: ChallengeType.dare,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'dp4',
      title: 'Poză Aleasă',
      content: 'Lasă pe cineva să-ți facă o poză',
      description: 'Fără refuz.',
      emoji: '🍻',
      categoryId: 'party',
      type: ChallengeType.dare,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'dp5',
      title: 'Moment Filmabil',
      content: 'Filmează un dans exagerat',
      description: 'Fără șters.',
      emoji: '🎬',
      categoryId: 'party',
      type: ChallengeType.dare,
      gradientIndex: 4,
    ),
  ];

  // ===== ADEVĂRURI - ȘCOALĂ =====
  static const List<Challenge> truthsSchool = [
    Challenge(
      id: 'ts1',
      title: 'Admirație',
      content: 'Ai admirat vreodată un profesor?',
      description: 'Pentru ce?',
      emoji: '🍎',
      categoryId: 'school',
      type: ChallengeType.truth,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'ts2',
      title: 'Trișat',
      content: 'Ai trișat vreodată la un test?',
      description: 'Cum?',
      emoji: '📄',
      categoryId: 'school',
      type: ChallengeType.truth,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'ts3',
      title: 'Nota Secretă',
      content: 'Care e nota pe care ai ascuns-o?',
      description: 'Cum?',
      emoji: '1️⃣',
      categoryId: 'school',
      type: ChallengeType.truth,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'ts4',
      title: 'Ce-ar fi fost',
      content: 'Cu cine ai fi vrut să fii mai apropiat?',
      description: 'Mai vorbiți?',
      emoji: '💔',
      categoryId: 'school',
      type: ChallengeType.truth,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'ts5',
      title: 'Absențe',
      content: 'Câte ore ai lipsit fără motiv?',
      description: 'Scuza preferată?',
      emoji: '🚪',
      categoryId: 'school',
      type: ChallengeType.truth,
      gradientIndex: 4,
    ),
  ];

  // ===== PROVOCĂRI - ȘCOALĂ =====
  static const List<Challenge> daresSchool = [
    Challenge(
      id: 'ds1',
      title: 'Mesaj Oficial',
      content: 'Trimite un mesaj formal amuzant',
      description: 'Fără explicații.',
      emoji: '📧',
      categoryId: 'school',
      type: ChallengeType.dare,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'ds2',
      title: 'Scuze',
      content: 'Cere scuze public pentru ceva minor',
      description: 'Serios.',
      emoji: '🙋',
      categoryId: 'school',
      type: ChallengeType.dare,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'ds3',
      title: 'Moment Artistic',
      content: 'Cântă ceva cunoscut',
      description: '30 secunde.',
      emoji: '🇷🇴',
      categoryId: 'school',
      type: ChallengeType.dare,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'ds4',
      title: 'Desen Rapid',
      content: 'Desenează ceva pe tablă',
      description: 'Șterge și pleacă.',
      emoji: '🖍️',
      categoryId: 'school',
      type: ChallengeType.dare,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'ds5',
      title: 'Recunoaștere',
      content: 'Spune că ai uitat tema intenționat',
      description: 'Cu seriozitate.',
      emoji: '📚',
      categoryId: 'school',
      type: ChallengeType.dare,
      gradientIndex: 4,
    ),
  ];

  // ===== ADEVĂRURI - FAMILIE =====
  static const List<Challenge> truthsFamily = [
    Challenge(
      id: 'tfa1',
      title: 'Obicei Părinte',
      content: 'Ce obicei al părinților te enervează?',
      description: 'Diplomatic.',
      emoji: '👨‍👩',
      categoryId: 'family',
      type: ChallengeType.truth,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'tfa2',
      title: 'Frați',
      content: 'Ce te enervează cel mai tare la frați?',
      description: 'Și ce apreciezi?',
      emoji: '👶',
      categoryId: 'family',
      type: ChallengeType.truth,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'tfa3',
      title: 'Personaj',
      content: 'Cine e cel mai colorat membru al familiei?',
      description: 'De ce?',
      emoji: '🎪',
      categoryId: 'family',
      type: ChallengeType.truth,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'tfa4',
      title: 'Secret',
      content: 'Ai descoperit vreodată un secret de familie?',
      description: 'Cum ai reacționat?',
      emoji: '🤐',
      categoryId: 'family',
      type: ChallengeType.truth,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'tfa5',
      title: 'Poveste Rușinoasă',
      content: 'Ce poveste te face mereu să roșești?',
      description: 'Cine o spune?',
      emoji: '😳',
      categoryId: 'family',
      type: ChallengeType.truth,
      gradientIndex: 4,
    ),
  ];

  // ===== PROVOCĂRI - FAMILIE =====
  static const List<Challenge> daresFamily = [
    Challenge(
      id: 'dfa1',
      title: 'Gătit',
      content: 'Gătește ceva simplu pentru familie',
      description: 'Acceptă feedback.',
      emoji: '👨‍🍳',
      categoryId: 'family',
      type: ChallengeType.dare,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'dfa2',
      title: 'Îmbrățișări',
      content: 'Îmbrățișează pe toată lumea',
      description: '10 secunde.',
      emoji: '🤗',
      categoryId: 'family',
      type: ChallengeType.dare,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'dfa3',
      title: 'Film',
      content: 'Alege filmul serii',
      description: 'Fără refuz.',
      emoji: '🎬',
      categoryId: 'family',
      type: ChallengeType.dare,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'dfa4',
      title: 'Plimbare',
      content: 'Plimbare 15 minute cu un părinte',
      description: 'Fără telefon.',
      emoji: '🚶',
      categoryId: 'family',
      type: ChallengeType.dare,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'dfa5',
      title: 'Poză',
      content: 'Fă o poză de familie amuzantă',
      description: 'Trimite-o.',
      emoji: '📷',
      categoryId: 'family',
      type: ChallengeType.dare,
      gradientIndex: 4,
    ),
  ];

    static const List<Challenge> truthsDeep = [
  Challenge(
    id: 'td1',
    title: 'Frica Tăcută',
    content: 'Care este frica ta cea mai mare?',
    description: 'Cea pe care nu o spui des.',
    emoji: '🌑',
    categoryId: 'deep',
    type: ChallengeType.truth,
    gradientIndex: 0,
  ),
  Challenge(
    id: 'td2',
    title: 'Regret',
    content: 'Ce decizie din trecut încă te apasă?',
    description: 'Ai face-o diferit?',
    emoji: '🕰️',
    categoryId: 'deep',
    type: ChallengeType.truth,
    gradientIndex: 1,
  ),
  Challenge(
    id: 'td3',
    title: 'Adevăratul Tu',
    content: 'Când te simți cel mai autentic?',
    description: 'Cu cine?',
    emoji: '🪞',
    categoryId: 'deep',
    type: ChallengeType.truth,
    gradientIndex: 2,
  ),
  Challenge(
    id: 'td4',
    title: 'Singurătate',
    content: 'Te-ai simțit vreodată singur printre oameni?',
    description: 'Povestește.',
    emoji: '🌊',
    categoryId: 'deep',
    type: ChallengeType.truth,
    gradientIndex: 3,
  ),
  Challenge(
    id: 'td5',
    title: 'Sens',
    content: 'Ce îți dă sens în viață acum?',
    description: 'S-a schimbat?',
    emoji: '✨',
    categoryId: 'deep',
    type: ChallengeType.truth,
    gradientIndex: 4,
  ),
];
static const List<Challenge> daresDeep = [
  Challenge(
    id: 'dd1',
    title: 'Tăcere',
    content: 'Stai 1 minut în liniște totală',
    description: 'Fără telefon.',
    emoji: '🤫',
    categoryId: 'deep',
    type: ChallengeType.dare,
    gradientIndex: 0,
  ),
  Challenge(
    id: 'dd2',
    title: 'Recunoștință',
    content: 'Spune 3 lucruri pentru care ești recunoscător',
    description: 'Cu voce tare.',
    emoji: '🙏',
    categoryId: 'deep',
    type: ChallengeType.dare,
    gradientIndex: 1,
  ),
  Challenge(
    id: 'dd3',
    title: 'Mesaj Sincer',
    content: 'Trimite un mesaj sincer cuiva important',
    description: 'Fără ironie.',
    emoji: '💬',
    categoryId: 'deep',
    type: ChallengeType.dare,
    gradientIndex: 2,
  ),
  Challenge(
    id: 'dd4',
    title: 'Privire',
    content: 'Privește pe cineva 30 secunde fără să vorbești',
    description: 'Fără râs.',
    emoji: '👁️',
    categoryId: 'deep',
    type: ChallengeType.dare,
    gradientIndex: 3,
  ),
  Challenge(
    id: 'dd5',
    title: 'Respiră',
    content: 'Respiră profund timp de 5 cicluri',
    description: 'Conștient.',
    emoji: '🌬️',
    categoryId: 'deep',
    type: ChallengeType.dare,
    gradientIndex: 4,
  ),
];


  // ===== ADEVĂRURI - FUNNY =====
  static const List<Challenge> truthsFunny = [
    Challenge(
      id: 'tfun1',
      title: 'Moment Cringe',
      content: 'Care e cel mai cringe moment al tău?',
      description: 'Nu-l îndulci.',
      emoji: '😬',
      categoryId: 'funny',
      type: ChallengeType.truth,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'tfun2',
      title: 'Skill Zero',
      content: 'La ce ești foarte prost?',
      description: 'Chiar foarte.',
      emoji: '🎺',
      categoryId: 'funny',
      type: ChallengeType.truth,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'tfun3',
      title: 'Obsesie',
      content: 'Ce obsesie ciudată ai?',
      description: 'De când?',
      emoji: '🐛',
      categoryId: 'funny',
      type: ChallengeType.truth,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'tfun4',
      title: 'Pet Peeve',
      content: 'Ce te scoate cel mai tare din sărite?',
      description: 'Și care e al tău?',
      emoji: '🤬',
      categoryId: 'funny',
      type: ChallengeType.truth,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'tfun5',
      title: 'Imitație',
      content: 'Pe cine poți imita cel mai bine?',
      description: 'Mini demo.',
      emoji: '🎪',
      categoryId: 'funny',
      type: ChallengeType.truth,
      gradientIndex: 4,
    ),
  ];

  // ===== PROVOCĂRI - FUNNY =====
  static const List<Challenge> daresFunny = [
    Challenge(
      id: 'dfun1',
      title: 'Mers Ciudat',
      content: 'Mergi ca un crab 10 pași',
      description: 'Fără râs.',
      emoji: '🦀',
      categoryId: 'funny',
      type: ChallengeType.dare,
      gradientIndex: 0,
    ),
    Challenge(
      id: 'dfun2',
      title: 'Voce Dubioasă',
      content: 'Vorbește într-o voce ciudată 1 minut',
      description: 'Poveste inclusă.',
      emoji: '🎙️',
      categoryId: 'funny',
      type: ChallengeType.dare,
      gradientIndex: 1,
    ),
    Challenge(
      id: 'dfun3',
      title: 'Vorbit Invers',
      content: 'Spune o propoziție invers',
      description: 'Cine ghicește câștigă.',
      emoji: '🔄',
      categoryId: 'funny',
      type: ChallengeType.dare,
      gradientIndex: 2,
    ),
    Challenge(
      id: 'dfun4',
      title: 'Față Ciudată',
      content: 'Fă cea mai ciudată față',
      description: '10 secunde.',
      emoji: '🌮',
      categoryId: 'funny',
      type: ChallengeType.dare,
      gradientIndex: 3,
    ),
    Challenge(
      id: 'dfun5',
      title: 'Sunete',
      content: 'Scoate sunete ciudate 30 secunde',
      description: 'Fără cuvinte.',
      emoji: '🔊',
      categoryId: 'funny',
      type: ChallengeType.dare,
      gradientIndex: 4,
    ),
  ];

  // ===== HELPERS =====
  static List<Challenge> getChallenges(String categoryId, ChallengeType type) {
    final allChallenges = _getAllChallenges();
    return allChallenges
        .where((c) => c.categoryId == categoryId && c.type == type)
        .toList();
  }

  static List<Challenge> _getAllChallenges() {
    return [
      ...truthsFriends,
      ...daresFriends,
      ...truthsParty,
      ...daresParty,
      ...truthsSchool,
      ...daresSchool,
      ...truthsFamily,
      ...daresFamily,
      ...truthsDeep,
      ...daresDeep,
      ...truthsFunny,
      ...daresFunny,
    ];
  }

  static Category? getCategoryById(String id) {
    try {
      return categories.firstWhere((c) => c.id == id);
    } catch (e) {
      return null;
    }
  }
}
