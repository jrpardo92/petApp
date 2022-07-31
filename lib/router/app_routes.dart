import 'package:flutter/material.dart';

import '../Screens/screens.dart';

class AppRouter {
  // Definir ruta inicial
  static const initialRoute = 'entry';

// Definir mapa de rutas
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'alerts': (context) => const AlertsScreen(),
    'entry': (context) => const EntryScreen(),
    'login': (context) => const LoginScreen(),
    'petRegister': (context) => const PetRegisterScreen(),
    'pets': (context) => const PetsScreen(),
    'petSearchInfo': (context) => const PetSearchInfoScreen(),
    'recomendations': (context) => const RecomendationsScreen(),
    'searchPet': (context) => const SearchPetScreen(),
    'settings': (context) => const SettingsScreen(),
    'userRegister': (context) => const UserRegisterScreen(),
    'btn_navigation': (context) => const Btn_Navigation_Screen(),
    'pet1': (context) => const Pet1Screen(),
    'pet2': (context) => const Pet2Screen(),
    'pet3': (context) => const Pet3Screen(),
    'pet1Found': (context) => const Pet1ScreenFound(),
  };
}
