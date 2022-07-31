import 'package:flutter/material.dart';
import '../Screens/screens.dart';
import '../UI/input_decorations.dart';
import '../theme/app_theme.dart';

class PetRegisterScreen extends StatelessWidget {
  const PetRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              const Text(
                'Ingresa tu informacion de tu mascota',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese su nombre',
                    labelTextO: 'Nombre de tu mascota',
                    prefixIcon: Icons.person),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese su raza',
                    labelTextO: 'Raza',
                    prefixIcon: Icons.pets),
              ),
              SizedBox(height: 10),
              TextFormField(
                // obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintTextO: 'Ingrese la edad de la mascota',
                  labelTextO: 'Edad',
                  prefixIcon: Icons.numbers,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintTextO: 'Ingrese descripcion y detalle',
                    labelTextO: 'Descripcion y detalles',
                    prefixIcon: Icons.text_fields),
              ),
              SizedBox(height: 30),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.colorSecundary,
                  child: const SizedBox(
                    width: 350,
                    // padding: EdgeInsets.symmetric(horizontal: 135),
                    child: Text(
                      'Subir foto',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {}),
              SizedBox(height: 210),
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
                      'Registrar mascota',
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
