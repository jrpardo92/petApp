import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/cardPet1.dart';

class Pet2Screen extends StatelessWidget {
  const Pet2Screen({Key? key}) : super(key: key);

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
                Text(
                  'ID:',
                  style: TextStyle(
                      color: Colors.amber[700], fontWeight: FontWeight.bold),
                ),
                const Text(
                  '002',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Card(
                  child: Image(
                    width: 500,
                    image: AssetImage('assets/images/samoyedo.jpg'),
                  ),
                ),
                const SizedBox(height: 20),
                _infoMascota(),
                const SizedBox(height: 60),
                _btn_desarparicion(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _btn_desarparicion extends StatelessWidget {
  const _btn_desarparicion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: AppTheme.colorSecundary,
        child: const SizedBox(
          width: 350,
          child: Text(
            'Reportar desaparicion',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'petSearchInfo');
        });
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
        'TONY',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 10),
      Text(
        'RAZA',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'Samoyedo',
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
        '1 años',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 10),
      Text(
        'DESCRIPCION',
        style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold),
      ),
      const Text(
        'Divertido, muy alegre y le gustan  los rios',
        style: TextStyle(fontSize: 20),
      ),
    ],
  );
}
