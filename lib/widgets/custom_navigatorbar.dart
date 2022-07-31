import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/ui_provider.dart';

class customNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvier = Provider.of<UiProvider>(context);
    final currentIndexApp = uiProvier.selectMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvier.selectMenuOpt = i,
      currentIndex: currentIndexApp,
      showUnselectedLabels: true,
      fixedColor: Colors.amber,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: "Mascotas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Alertas",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.recommend), label: "Recomendaciones"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
        ),
      ],
    );
  }
}
