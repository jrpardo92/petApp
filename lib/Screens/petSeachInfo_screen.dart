import 'package:flutter/material.dart';
import '../widgets/cardPet1.dart';

class PetSearchInfoScreen extends StatelessWidget {
  const PetSearchInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informacion de mascota"),
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
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 110),
                  child: Text(
                    'DESAPARECIDO',
                    style: TextStyle(
                        color: Colors.red[700], fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'ID:',
                  style: TextStyle(
                      color: Colors.amber[700], fontWeight: FontWeight.bold),
                ),
                const Text(
                  '001',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const CardPet1(),
                const SizedBox(height: 20),
                _infoMascota(),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
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
      const Text(
        'Informacion de Mascota',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      const SizedBox(height: 10),
      Text(
        'NOMBRE:',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'MAX',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 10),
      Text(
        'RAZA',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'Golden Retriver',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      const SizedBox(height: 10),
      Text(
        'EDAD',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        '2 años',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 10),
      Text(
        'DESCRIPCION',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
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
      const Text(
        'Informacion de propietario',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      const SizedBox(height: 10),
      Text(
        'NOMBRE:',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'Kelvin J. Pardo',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 10),
      Text(
        'CONTACTO',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            '0988222445',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(width: 200),
          Icon(
            Icons.copy,
          )
        ],
      ),
      const SizedBox(height: 10),
      Text(
        'CIUDAD',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'Loja',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 10),
      Text(
        'Pais',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'Ecuador',
        style: TextStyle(fontSize: 20),
      ),
      const SizedBox(height: 30),
    ],
  );
}
