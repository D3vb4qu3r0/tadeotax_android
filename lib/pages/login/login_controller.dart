import 'package:flutter/material.dart';
import '../../providers/auth_provider.dart';

class loginController{

  late BuildContext context;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late AuthProvider _authProvider;

  void init(BuildContext context) {
    this.context = context;
    _authProvider = AuthProvider();
  }

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text;

    print ('Email: $email');
    print ('Password: $password');

    try {
      bool isLogin = await _authProvider.login(email, password);
      if (isLogin) {
        print ('El usuario está logeado');
      } else {
        print('No se puedo autenticar usuario');
      }

    } catch (error) {
      print('Error $error');
    }

  }

}
