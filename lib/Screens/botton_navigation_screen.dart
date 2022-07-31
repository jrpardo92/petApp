import 'package:flutter/material.dart';
import 'package:pet_app/Screens/screens.dart';
import 'package:provider/provider.dart';

import '../providers/ui_provider.dart';
import '../widgets/custom_navigatorbar.dart';

class Btn_Navigation_Screen extends StatelessWidget {
  const Btn_Navigation_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: customNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // obtener el selected opt
    final uiProvier = Provider.of<UiProvider>(context);
    final currentIndex = uiProvier.selectMenuOpt;
    // final currentIndex = 1;
    switch (currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return PetsScreen();
      case 2:
        return AlertsScreen();
      case 3:
        return RecomendationsScreen();
      case 4:
        return SettingsScreen();
      default:
        return HomeScreen();
    }
  }
}
