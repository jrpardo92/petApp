// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(Icons.pets),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const _titleWelcome(),
          const SizedBox(height: 10),
          const _cardSearch(),
          const SizedBox(height: 30),
          const _MascotasTItle(),
          Row(
            children: const [
              _cardpet1(),
              SizedBox(width: 10),
              _cardpet2(),
            ],
          ),
          const SizedBox(height: 30),
          const _recomendartionsCard(),
        ],
      ),
    );
  }
}

class _recomendartionsCard extends StatelessWidget {
  const _recomendartionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recomendaciones',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              textAlign: TextAlign.start,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'recomendations');
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ver todos',
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            // 1 recomendacion
            Row(
              children: [
                Card(
                  elevation: 7,
                  child: SizedBox(
                    height: 180,
                    width: 160,
                    child: Column(
                      children: const [
                        Image(
                            height: 120,
                            image: AssetImage('assets/images/paseos.jpg'),
                            fit: BoxFit.cover),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 20),
                          child: Text(
                            'Paseos',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            // 2 recomendacion
            Row(
              children: [
                Card(
                  elevation: 7,
                  child: SizedBox(
                    height: 180,
                    width: 160,
                    child: Column(
                      children: const [
                        Image(
                            height: 120,
                            image: AssetImage('assets/images/vacunas.jpg'),
                            fit: BoxFit.cover),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 20),
                          child: Text(
                            'Vacunas',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
        //recomendacion
      ],
    );
  }
}

class _cardpet2 extends StatelessWidget {
  const _cardpet2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 7,
          child: SizedBox(
            height: 180,
            width: 160,
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/samoyedo.jpg'),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'MAX',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '2 años',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: Text(
                    'Golden Retriever',
                    style: TextStyle(
                        color: Colors.amber[700], fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _cardpet1 extends StatelessWidget {
  const _cardpet1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 7,
          child: SizedBox(
            height: 180,
            width: 160,
            child: Column(
              children: [
                const Image(
                    height: 120,
                    image: AssetImage('assets/images/max.jpg'),
                    fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'MAX',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '2 años',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: Text(
                    'Golden Retriever',
                    style: TextStyle(
                        color: Colors.amber[700], fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _MascotasTItle extends StatelessWidget {
  const _MascotasTItle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Mascotas principales',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          textAlign: TextAlign.start,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'pets');
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ver todos',
            ),
          ),
        )
      ],
    );
  }
}

class _cardSearch extends StatelessWidget {
  const _cardSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('No hay ninguna alerta de desaparicion'),
            const SizedBox(height: 10),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: AppTheme.colorSecundary,
                child: Container(
                  width: 350,
                  // padding: const EdgeInsets.symmetric(horizontal: 135),
                  child: const Text(
                    'Buscar',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'searchPet');
                }),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _titleWelcome extends StatelessWidget {
  const _titleWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hola, Kelvin.',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      textAlign: TextAlign.start,
    );
  }
}
