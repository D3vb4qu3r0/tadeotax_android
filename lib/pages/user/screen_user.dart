import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tadeotax_android/pages/user/trip_completed_user_controller.dart';

class screen_user extends StatefulWidget {
  const screen_user({super.key});
  @override
  State<screen_user> createState() => _screen_user_State();
}

class _screen_user_State extends State<screen_user> {
  final TripCompletedController _tripCompletedController = TripCompletedController();
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: 
    Stack(
      children: [
       GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),

      //boton barra
      Positioned(
        top: 30,
        left: 20,
        width: 35,
        height: 35,
        child:Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(100),
          ),
          child:
          Icon(Icons.density_medium_outlined), 
        ), 
      ),


      //Destino y salida
      Positioned(
        top: 30,
        left: 20,
        width: 400,
        height: 210,
        child: Container(
          margin: EdgeInsets.all(46.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),

            child: Column(
              children:[
               TextFormField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                 labelText: "Desde",
              ),
            ),
            TextFormField(
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                labelText: 'Hasta',
                border: InputBorder.none
              ),
            ),
              ]
            )

            
        )
        ),
      //boton recarga
      Positioned(
        top: 200,
        right: 20,
        width: 35,
        height: 35,
        child:Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child:
          Icon(Icons.rotate_right), 
        ), 
      ),

      //botonUbiActual 
      Positioned(
        top: 245,
        right: 20,
        width: 35,
        height: 35,
        child:Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child:
          Icon(Icons.my_location), 
        ), 
      ),

      //BotonSolicitar

      Positioned(
        bottom: 40,
        left: 120,
       child: FloatingActionButton.extended(
        onPressed: () {
          _tripCompletedController.navigateToTripCompleted(context);
        },
        label: const Text('SOLICITAR  >', 
          style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
        ),
        backgroundColor: const Color(0xffC13CC1),
      ),
),

      ],
    ),    
  );
}
}

