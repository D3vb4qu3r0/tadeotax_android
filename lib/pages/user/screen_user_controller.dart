import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/user/screen_user.dart';

class ScrenUserController{

  void navigateToScreenUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen_user(),
      ),
    );
  }

}