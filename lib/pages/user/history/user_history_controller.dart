import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/user/history/user_history_page.dart';

class UserHistoryController{

  void navigateToHistorypage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserHistoryPage(),
      ),
    );
  }

}