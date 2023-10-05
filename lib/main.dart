import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/home/home_page.dart';
import 'package:tadeotax_android/pages/login/login_page.dart';
import 'package:tadeotax_android/pages/user/history/user_history_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TadeoTax',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'history': (BuildContext context) => UserHistoryPage()
      },
    );
  }
}
