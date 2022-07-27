import 'package:flutter/material.dart';
import 'package:pet_app/Screens/settings_screen.dart';
import 'package:pet_app/router/app_routes.dart';
import 'Screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRouter.initiaRoute,
      routes: {
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
      },
    );
  }
}
