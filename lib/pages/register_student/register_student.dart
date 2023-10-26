import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/home/home_controller.dart';
import 'package:tadeotax_android/pages/login/login_page.dart';

class RegisterStudentForm extends StatefulWidget {
  @override
  _RegisterStudentFormState createState() => _RegisterStudentFormState();
}

class _RegisterStudentFormState extends State<RegisterStudentForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Agrega la imagen centrada
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/img/tadeotax1.png', // Ruta de la imagen en assets
                width: 130,
                height: 128, // imagen
              ),
            ),
            SizedBox(
                height: 24), // Espacio entre la imagen y los campos de datos
            buildTextField(usernameController, 'Username', Icons.person),
            buildTextField(emailController, 'Email', Icons.email),
            buildTextField(phoneController, 'Phone', Icons.phone),
            buildTextField(passwordController, 'Password', Icons.lock,
                isPassword: true),
            buildTextField(
                confirmPasswordController, 'Confirm Password', Icons.lock,
                isPassword: true),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para registrar al estudiante
                String username = usernameController.text;
                String email = emailController.text;
                String phone = phoneController.text;
                String password = passwordController.text;
                String confirmPassword = confirmPasswordController.text;

                // Por ejemplo, puedes imprimir los valores ingresados
                print('Username: $username');
                print('Email: $email');
                print('Phone: $phone');
                print('Password: $password');
                print('Confirm Password: $confirmPassword');

                // Luego, puedes agregar la lógica de registro y navegación a la siguiente pantalla
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      TextEditingController controller, String label, IconData icon,
      {bool isPassword = false}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: RegisterStudentForm(),
  ));
}
