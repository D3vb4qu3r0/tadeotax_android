import "package:flutter/material.dart";
import 'package:tadeotax_android/pages/login/login_page.dart';

class HomeController {


  void navigateToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}