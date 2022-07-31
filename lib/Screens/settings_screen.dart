import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(Icons.pets),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Perfil',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("Nombre"),
                    subtitle: Text('Eddy Ruiz'),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text("E-mail"),
                    subtitle: Text('eddyr@gmail.com'),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text("Contraseña"),
                    subtitle: Text('***************'),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text("Telefono"),
                    subtitle: Text('099999999'),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text("Ciudad"),
                    subtitle: Text('Loja'),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text("Pais"),
                    subtitle: Text('Ecuador'),
                    trailing: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.red[700],
                child: const SizedBox(
                  width: 350,
                  child: Text(
                    'Cerrar Sesion',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                }),

            // Image(
            //   image: AssetImage('assets/images/Logo_principal_texto.png'),
            //   height: 150,
            // ),
          ],
        ),
      ),
    );
  }
}
