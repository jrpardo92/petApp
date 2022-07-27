import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/Logo_principal_texto.png'),
              ),
              Text(
                'Puedes realizar la busqueda de una mascota',
                style: AppTheme.textoPrincipal,
              ),
              // TODO: boton de buscar
              Text('data'),
              Text(
                'o',
                style: AppTheme.textoPrincipal,
              ),
              Text(
                'Continuar para iniciar sesion',
                style: AppTheme.textoPrincipal,
              ),
              Text('Boton de continuar')
            ],
          ),
        ),
      ),
    );
  }
}
