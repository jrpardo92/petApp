import 'package:flutter/material.dart';

import '../UI/input_decorations.dart';
import '../theme/app_theme.dart';

class UserRegisterScreen extends StatelessWidget {
  const UserRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              const Text(
                'Ingresa tu informacion personal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese sus nombres completos',
                    labelTextO: 'Nombres',
                    prefixIcon: Icons.person),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese su email',
                    labelTextO: 'Email',
                    prefixIcon: Icons.mail),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintTextO: 'Ingrese contraseña',
                  labelTextO: 'Contraseña',
                  prefixIcon: Icons.lock_outline,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese su telefono',
                    labelTextO: 'Telefono',
                    prefixIcon: Icons.phone),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese su ciudad de residencia',
                    labelTextO: 'Ciudad',
                    prefixIcon: Icons.location_city),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese su pais',
                    labelTextO: 'Pais',
                    prefixIcon: Icons.location_city),
              ),
              SizedBox(height: 150),
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
                      'Registrarse',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'btn_navigation');
                  }),
            ],
          )),
    );
  }
}
