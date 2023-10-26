import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/register_driver/register_driver.dart';

class UserRegisterController{

  void navigateToDriverRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterDriverForm(),
      ),
    );
  }

}