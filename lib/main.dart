import 'package:flutter/material.dart';
import 'common/app_settings.dart';
import 'screens/home_screen.dart';

/// Funcția main - punctul de start al aplicației
/// Inițializăm SharedPreferences înainte de runApp()
void main() async {
  // Asigurăm că Flutter e inițializat
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inițializăm setările (SharedPreferences)
  await AppSettings().init();
  
  // Pornim aplicația
  runApp(const TruthOrDareApp());
}

/// Widget-ul principal al aplicației
class TruthOrDareApp extends StatelessWidget {
  const TruthOrDareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Titlul aplicației (apare în task manager)
      title: 'Adevăr sau Provocare',
      
      // Ascundem banner-ul DEBUG
      debugShowCheckedModeBanner: false,
      
      // Tema aplicației
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Roboto',
        
        // Configurări suplimentare pentru un look consistent
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      
      // Primul ecran afișat
      home: const HomeScreen(),
    );
  }
}