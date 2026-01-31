import 'package:shared_preferences/shared_preferences.dart';

/// Gestionarea stării aplicației cu SharedPreferences
/// Salvăm statisticile utilizatorului local
class AppSettings {
  // Chei pentru SharedPreferences
  static const String _keyTotalTruths = 'total_truths';     // Total adevăruri
  static const String _keyTotalDares = 'total_dares';       // Total provocări
  static const String _keyTotalPlayed = 'total_played';     // Total general

  // Singleton pattern - o singură instanță în toată aplicația
  static final AppSettings _instance = AppSettings._internal();
  factory AppSettings() => _instance;
  AppSettings._internal();

  SharedPreferences? _prefs;

  /// Inițializare SharedPreferences
  /// Trebuie apelat înainte de runApp()
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ===== SALVARE DATE =====

  /// Incrementează numărul total de adevăruri jucate
  Future<void> incrementTruths() async {
    final current = getTotalTruths();
    await _prefs?.setInt(_keyTotalTruths, current + 1);
    await _incrementTotal();
  }

  /// Incrementează numărul total de provocări jucate
  Future<void> incrementDares() async {
    final current = getTotalDares();
    await _prefs?.setInt(_keyTotalDares, current + 1);
    await _incrementTotal();
  }

  /// Incrementează numărul total general (privat)
  Future<void> _incrementTotal() async {
    final current = getTotalPlayed();
    await _prefs?.setInt(_keyTotalPlayed, current + 1);
  }

  // ===== CITIRE DATE =====

  /// Obține numărul total de adevăruri jucate
  int getTotalTruths() {
    return _prefs?.getInt(_keyTotalTruths) ?? 0;
  }

  /// Obține numărul total de provocări jucate
  int getTotalDares() {
    return _prefs?.getInt(_keyTotalDares) ?? 0;
  }

  /// Obține numărul total de provocări jucate (general)
  int getTotalPlayed() {
    return _prefs?.getInt(_keyTotalPlayed) ?? 0;
  }

  // ===== ȘTERGERE DATE =====

  /// Resetează toate statisticile
  Future<void> resetStats() async {
    await _prefs?.setInt(_keyTotalTruths, 0);
    await _prefs?.setInt(_keyTotalDares, 0);
    await _prefs?.setInt(_keyTotalPlayed, 0);
  }

  /// Resetează toate preferințele
  Future<void> clearAll() async {
    await _prefs?.clear();
  }
}