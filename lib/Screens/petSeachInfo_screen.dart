import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PetSearchInfoScreen extends StatelessWidget {
  const PetSearchInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion de mascota"),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.pets),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Image(
                    width: 500,
                    image: AssetImage('assets/images/Logo_principal_texto.png'),
                  ),
                ),
                SizedBox(height: 20),
                _infoMascota(),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                _infoPropietario()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_infoMascota() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Informacion de Mascota',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 10),
      Text(
        'Nombre:',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        'MAX',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 10),
      Text(
        'Raza',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        'Golden Retriver',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Edad',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        '2 años',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 10),
      Text(
        'Descripcion',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        'Alegre y energico, no es agresivo',
        style: TextStyle(fontSize: 20),
      ),
    ],
  );
}

_infoPropietario() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Informacion de propietario',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 10),
      Text(
        'Nombre:',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        'Kelvin J. Pardo',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 10),
      Text(
        'Contacto',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        '0988222445',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Ciudad',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        'Loja',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 10),
      Text(
        'Pais',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Text(
        'Ecuador',
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(height: 30),
    ],
  );
}
