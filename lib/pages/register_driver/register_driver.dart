import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/user/screen_user_controller.dart';

class RegisterDriverForm extends StatefulWidget {
  @override
  _RegisterDriverFormState createState() => _RegisterDriverFormState();
}

class _RegisterDriverFormState extends State<RegisterDriverForm> {
  final ScreenUserController _screnUserController = ScreenUserController();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController codeController1 = TextEditingController();
  TextEditingController codeController2 = TextEditingController();
  TextEditingController codeController3 = TextEditingController();
  TextEditingController codeController4 = TextEditingController();
  TextEditingController codeController5 = TextEditingController();
  TextEditingController codeController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Driver'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildTextField(usernameController, 'Username', Icons.person),
            buildTextField(emailController, 'Email', Icons.email),
            buildTextField(phoneController, 'Phone', Icons.phone),
            buildTextField(passwordController, 'Password', Icons.lock,
                isPassword: true),
            buildTextField(
                confirmPasswordController, 'Confirm Password', Icons.lock,
                isPassword: true),
            SizedBox(height: 24),
            Text(
              'Car Registration',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                buildCodeTextField(codeController1),
                buildCodeTextField(codeController2),
                buildCodeTextField(codeController3),
                buildCodeTextField(codeController4),
                buildCodeTextField(codeController5),
                buildCodeTextField(codeController6),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                _screnUserController.navigateToScreenUser(context);

                // Aquí puedes agregar la lógica para registrar al conductor
                String username = usernameController.text;
                String email = emailController.text;
                String phone = phoneController.text;
                String password = passwordController.text;
                String confirmPassword = confirmPasswordController.text;

                // Obtener el código de registro del conductor
                String code = '';
                code += codeController1.text;
                code += codeController2.text;
                code += codeController3.text;
                code += codeController4.text;
                code += codeController5.text;
                code += codeController6.text;

                // Por ejemplo, puedes imprimir los valores ingresados
                print('Username: $username');
                print('Email: $email');
                print('Phone: $phone');
                print('Password: $password');
                print('Confirm Password: $confirmPassword');
                print('Car Registration Code: $code');

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

  Widget buildCodeTextField(TextEditingController controller) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextField(
          controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: '',
            border: OutlineInputBorder(),
          ),
        ),
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
    codeController1.dispose();
    codeController2.dispose();
    codeController3.dispose();
    codeController4.dispose();
    codeController5.dispose();
    codeController6.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: RegisterDriverForm(),
  ));
}
