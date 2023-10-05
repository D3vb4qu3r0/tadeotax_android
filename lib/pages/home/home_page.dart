import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/driver/trip_completed_driver.dart';
import 'package:tadeotax_android/pages/home/home_controller.dart';
import 'package:tadeotax_android/pages/login/login_page.dart';
import 'package:tadeotax_android/pages/user/trip_completed_user.dart';

class HomePage extends StatelessWidget {
  final HomeController _con = HomeController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //_con.init(context); // Instancia home controller

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/img/tadeotax1.png',
                  width: 130,
                  height: 128,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'TADEOTAX',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffC13CC1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text("Enter how?", style: TextStyle(fontSize: 30)),
            const SizedBox(height: 50),
            _imageTypeUser(context, 'assets/img/student.png'),
            const SizedBox(height: 15),
            _textTypeUser('Student'),
            const SizedBox(height: 50),
            _imageTypeUser(context, 'assets/img/driver.png'),
            const SizedBox(height: 15),
            _textTypeUser('Driver')
          ],
        ),
      ),
    );
  }

  Widget _imageTypeUser(BuildContext context, image) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TripUser(),
          ),
        );
      },
      child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 55,
          backgroundColor: Colors.transparent),
    );
  }

  Widget _textTypeUser(String typeUser) {
    return Text(
      typeUser,
      style: const TextStyle(fontSize: 25),
    );
  }
}
