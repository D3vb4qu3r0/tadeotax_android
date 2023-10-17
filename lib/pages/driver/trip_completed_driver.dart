import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TripDriver extends StatefulWidget {
  @override
  _TripDriver createState() => _TripDriver();
}

class _TripDriver extends State<TripDriver> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trip completed Driver'),
        ),
        body: Center(
          child: MyOvalWithIconAndText(),
        ),
      ),
    );
  }
}

class MyOvalWithIconAndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            width: screenWidth,
            height: screenWidth * 0.5, // Ajusta el alto a tu preferencia
            color: Color(0xffC13CC1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    size: screenWidth * 0.2, // Tamaño proporcional
                    color: Colors.black,
                  ),
                  SizedBox(height: screenWidth * 0.03),
                  Text(
                    'VIAJE FINALIZADO',
                    style: TextStyle(
                      fontSize: screenWidth * 0.07, // Tamaño proporcional
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.all(5), // Ajusta el espaciado según tus necesidades
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenWidth * 0.2),
              Text(
                'VALOR DE VIAJE',
                style: TextStyle(
                  fontSize: screenWidth * 0.07, // Tamaño proporcional
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenWidth * 0.02),
              Text(
                '10.000',
                style: TextStyle(
                  fontSize: screenWidth * 0.07, // Tamaño proporcional
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenWidth * 0.1),
              Text(
                'CALIFICA A TU CONDUCTOR',
                style: TextStyle(
                  fontSize: screenWidth * 0.07, // Tamaño proporcional
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenWidth * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border,
                    size: screenWidth * 0.15, // Tamaño proporcional
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_border,
                    size: screenWidth * 0.15,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_border,
                    size: screenWidth * 0.15,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_border,
                    size: screenWidth * 0.15,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_border,
                    size: screenWidth * 0.15,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.1),
              Container(
                width: screenWidth * 0.5, // Ancho proporcional
                height: screenWidth * 0.1, // Alto proporcional
                decoration: BoxDecoration(
                  color: Color(0xffC13CC1),
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),
                ),
                child: Center(
                  child: Text(
                    'CALIFICAR',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.05, // Tamaño proporcional
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
