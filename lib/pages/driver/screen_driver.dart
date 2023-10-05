import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class screen_driver extends StatefulWidget {
  const screen_driver({super.key});

  @override
  State<screen_driver> createState() => _screen_driverState();
}

class _screen_driverState extends State<screen_driver> {
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

      //boton recarga
      Positioned(
        top: 30,
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
        top: 75,
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
        onPressed: () {},
        label: const Text('DESCONECTAR', 
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