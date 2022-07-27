import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: definicion color principal de la app
    const colorPrincipal = Color(0xffFFAF36);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPrincipal,
        title: const Text('Inicio'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(Icons.pets),
          )
        ],
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
