import 'package:flutter/material.dart';

class TripUser extends StatefulWidget {
  @override
  _TripUser createState() => _TripUser();
}

class _TripUser extends State<TripUser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trip completed user'),
        ),
        body: Align(
          alignment: Alignment(0.0, -61),
          child: MyCircleWithIconAndText(),
        ),
      ),
    );
  }
}

class MyCircleWithIconAndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 710,
      height: 710,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffC13CC1),
      ),
      child: Align(
        alignment: Alignment(0.0, 5.7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle_rounded,
              size: 80,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Text(
              'VIAJE FINALIZADO',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 120),
            Text(
              'VALOR DE VIAJE',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '10.000',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 70),
            Text(
              'CALIFICA A TU CONDUCTOR',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_border,
                  size: 70,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star_border,
                  size: 70,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star_border,
                  size: 70,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star_border,
                  size: 70,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star_border,
                  size: 70,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffC13CC1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'CALIFICAR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
