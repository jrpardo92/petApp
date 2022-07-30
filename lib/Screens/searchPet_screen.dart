import 'package:flutter/material.dart';
import 'package:pet_app/theme/app_theme.dart';

import '../UI/input_decorations.dart';

class SearchPetScreen extends StatelessWidget {
  const SearchPetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busqueda"),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.pets),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Buscar una mascota',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 30),
            // Identificacion
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintTextO: 'Ingrese numero de ID',
                  labelTextO: 'ID',
                  prefixIcon: Icons.numbers),
            ),
            const SizedBox(height: 20),
            // Nombre de usuario
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintTextO: 'Ingrese sus nombres',
                  labelTextO: 'Nombre de usuario',
                  prefixIcon: Icons.person),
            ),
            const SizedBox(height: 20),
            // Telefono
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintTextO: 'Ingrese numero de telefono',
                  labelTextO: 'Telefono',
                  prefixIcon: Icons.numbers),
            ),
            const SizedBox(height: 20),
            // Identificacion
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintTextO: 'Ingrese mensaje o descripcion',
                  labelTextO: 'Mensaje',
                  prefixIcon: Icons.numbers),
            ),
            const SizedBox(height: 280),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: AppTheme.colorSecundary,
                child: const SizedBox(
                  width: 350,
                  child: Text(
                    'Buscar',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'petSearchInfo');
                })
          ],
        ),
      ),
    );
  }
}
