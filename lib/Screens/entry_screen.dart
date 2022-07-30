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
            children: [
              const Image(
                image: AssetImage('assets/images/Logo_principal_texto.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Es hora de tener mas seguridad para tu mascota',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Puedes realizar la busqueda de una mascota',
                style: AppTheme.textoPrincipal,
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.colorSecundary,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 135),
                    child: const Text(
                      'Buscar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'searchPet');
                  }),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'o',
                style: AppTheme.textoPrincipal,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Continuar para iniciar sesion',
                style: AppTheme.textoPrincipal,
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.primary,
                  child: const SizedBox(
                    width: 350,
                    // padding: EdgeInsets.symmetric(horizontal: 135),
                    child: Text(
                      'Continuar',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
