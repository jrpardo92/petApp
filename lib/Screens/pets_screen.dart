// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mascotas'),
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
            SizedBox(height: 20),
            _card2(),
            SizedBox(height: 70),
            SizedBox(
              height: 80,
            ),
            _btnAgregarMascota()
          ],
        ));
  }
}

class _btnAgregarMascota extends StatelessWidget {
  const _btnAgregarMascota({
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
            'Agregar mascota',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'petRegister');
        });
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
        Navigator.pushNamed(context, 'pet1');
      },
      child: Card(
        elevation: 7,
        child: SizedBox(
          height: 200,
          width: 160,
          child: Column(
            children: [
              const Image(
                  height: 140,
                  width: 350,
                  image: AssetImage('assets/images/max.jpg'),
                  fit: BoxFit.fill),
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
            ],
          ),
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
    return GestureDetector(
      onTap: (() => Navigator.pushNamed(context, 'pet2')),
      child: Card(
        elevation: 7,
        child: SizedBox(
          height: 180,
          width: 160,
          child: Column(
            children: [
              const Image(
                  height: 120,
                  width: 350,
                  image: AssetImage('assets/images/samoyedo.jpg'),
                  fit: BoxFit.cover),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'TONY',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Text(
                  'Samoyedo',
                  style: TextStyle(
                      color: Colors.amber[700], fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
