import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tadeotax_android/pages/user/rating_controller.dart';

class TripDriver extends StatefulWidget {
  @override
  _TripDriver createState() => _TripDriver();
}

class _TripDriver extends State<TripDriver> {
  final RatingController _ratingController = RatingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final ratingModel = _ratingController.ratingModel;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  width: screenWidth,
                  height: screenWidth * 0.7,
                  color: Color(0xffC13CC1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          size: screenWidth * 0.2,
                          color: Colors.black,
                        ),
                        SizedBox(height: screenWidth * 0.03),
                        Text(
                          'VIAJE FINALIZADO',
                          style: TextStyle(
                            fontSize: screenWidth * 0.07,
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
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenWidth * 0.2),
                    Text(
                      'VALOR DE VIAJE',
                      style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.02),
                    Text(
                      '10.000',
                      style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.1),
                    Text(
                      'CALIFICA A TU CLIENTE',
                      style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 1; i <= 5; i++)
                          InkWell(
                            onTap: () {
                              _ratingController.updateRating(i);
                            },
                            child: Icon(
                              ratingModel.stars >= i
                                  ? Icons.star
                                  : Icons.star_border,
                              size: screenWidth * 0.15,
                              color: Colors.black,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: screenWidth * 0.1),
                    ElevatedButton(
                      onPressed: () {
                        _ratingController.submitRating();
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffC13CC1), // Color de fondo
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.05), // Borde redondeado
                        ),
                        minimumSize: Size(screenWidth * 0.7,
                            screenWidth * 0.1), // Ancho y alto proporcionales
                      ),
                      child: Text(
                        'CALIFICAR',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.05, // Tamaño proporcional
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(ratingModel.thankYouMessage),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
