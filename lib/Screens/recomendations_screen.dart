import 'package:flutter/material.dart';

class RecomendationsScreen extends StatelessWidget {
  const RecomendationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recomendaciones'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.pets),
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            _card1(),
            SizedBox(height: 20),
            _card2(),
          ],
        ));
  }
}

class _card1 extends StatelessWidget {
  const _card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: SizedBox(
        height: 180,
        width: 160,
        child: Column(
          children: [
            const Image(
                height: 120,
                width: 350,
                image: AssetImage('assets/images/max.jpg'),
                fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 5,
              ),
              child: Text(
                'Paseos',
                style: TextStyle(
                    color: Colors.amber[700], fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                'La importancia de los paseos en tu mascota',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _card2 extends StatelessWidget {
  const _card2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: SizedBox(
        height: 220,
        width: 160,
        child: Column(
          children: [
            const Image(
                height: 130,
                width: 350,
                image: AssetImage('assets/images/vacunas.jpg'),
                fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 5,
              ),
              child: Text(
                'Vacunas',
                style: TextStyle(
                    color: Colors.amber[700], fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Las vacunas principales para tu mascota y sus beneficios',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
