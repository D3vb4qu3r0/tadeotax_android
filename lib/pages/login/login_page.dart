import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true, // Para ocultar la contraseña
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para validar el usuario y la contraseña
                String username = usernameController.text;
                String password = passwordController.text;

                // Por ejemplo, puedes imprimir los valores ingresados
                print('Usuario: $username');
                print('Contraseña: $password');

                // Luego, puedes agregar la lógica de autenticación y navegación a la siguiente pantalla
              },
              child: Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
