import 'package:flutter/material.dart';
import 'package:pet_app/UI/input_decorations.dart';
import 'package:pet_app/theme/app_theme.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            CardContainer(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Iniciar Sesión',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _loginForm(),
                ],
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Crear una nueva cuenta',
              style: TextStyle(color: AppTheme.colorSecundary),
            )
          ],
        ),
      )),
    );
  }
}

class _loginForm extends StatelessWidget {
  const _loginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        // TODO mantener la referencia al KEY
        child: Column(
          children: [
            // email
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintTextO: 'Ingrese email',
                labelTextO: 'Email',
                prefixIcon: Icons.alternate_email,
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintTextO: 'Ingrese contraseña',
                labelTextO: 'Contraseña',
                prefixIcon: Icons.lock_outline,
              ),
            ),
            SizedBox(height: 30),

            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.amber,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'Ingresar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // TODO: boton de ingresar
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                })
          ],
        ),
      ),
    );
  }
}
