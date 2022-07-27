import 'package:flutter/material.dart';

import '../Screens/screens.dart';

class AppRouter {
  // Definir ruta inicial
  static const initiaRoute = 'home';

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
  };
}
