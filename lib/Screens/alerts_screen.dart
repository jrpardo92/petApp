import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alerta'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.pets),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            _card1(),
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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'petSearchInfo');
      },
      child: Card(
        elevation: 7,
        child: SizedBox(
          height: 200,
          width: 160,
          child: Column(
            children: [
              const Image(
                  height: 120,
                  width: 350,
                  image: AssetImage('assets/images/max.jpg'),
                  fit: BoxFit.cover),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'MAX',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Text(
                  'Golden Retriever',
                  style: TextStyle(
                      color: Colors.amber[700], fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Text(
                  'Desaparecido',
                  style: TextStyle(
                      color: Colors.red[700], fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
