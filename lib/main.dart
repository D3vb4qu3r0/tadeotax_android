import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tadeotax_android/pages/home/home_page.dart';
import 'package:tadeotax_android/pages/login/login_page.dart';
import 'package:tadeotax_android/pages/register_driver/register_driver.dart';
import 'package:tadeotax_android/pages/user/history/user_history_page.dart';
import 'package:tadeotax_android/pages/user/screen_user.dart';
import 'package:tadeotax_android/pages/user/trip_completed_user.dart';

Future main() async{
  await dotenv.load(fileName: ".env");
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
        //'home': (BuildContext context) => HomePage(),
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'history': (BuildContext context) => UserHistoryPage(),
        'registerDriver': (BuildContext context) => RegisterDriverForm(),
        'screenUser': (BuildContext context) => screen_user(),
        'tripCompleted': (BuildContext context) => TripUser(),
      },
    );
  }
}
