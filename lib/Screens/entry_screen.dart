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
              Image(
                image: AssetImage('assets/images/Logo_principal_texto.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Es hora de tener mas seguridad para tu mascota',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Puedes realizar la busqueda de una mascota',
                style: AppTheme.textoPrincipal,
              ),
              SizedBox(
                height: 10,
              ),
              // TODO: boton de buscar2
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.colorSecundary,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 135),
                    child: Text(
                      'Buscar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'searchPet');
                  }),
              SizedBox(
                height: 10,
              ),
              Text(
                'o',
                style: AppTheme.textoPrincipal,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Continuar para iniciar sesion',
                style: AppTheme.textoPrincipal,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.primary,
                  child: Container(
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
