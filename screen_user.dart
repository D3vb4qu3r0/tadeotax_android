import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class screen_user extends StatefulWidget {
  const screen_user({Key? key}) : super(key: key);

  @override
  _screen_user_State createState() => _screen_user_State();
}

class _screen_user_State extends State<screen_user> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              // Do something with the controller if needed.
            },
          ),

          Positioned(
            top: 30,
            left: 20,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.density_medium_outlined),
            ),
          ),


          //Bloque de busqueda Desde y Hasta
          Positioned(
            top: 30,
            left: 80,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity, // Ancho igual al contenedor
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        labelText: "Desde",
                        border: InputBorder.none

                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.black, // Línea negra
                  ),

                  Container(
                    width: double.infinity, // Ancho igual al contenedor
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        labelText: "Hasta",
                        border: InputBorder.none

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          //Boton recargar
          Positioned(
            top: 200,
            right: 20,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.rotate_right),
            ),
          ),


          //Boton ubicacion actual
          Positioned(
            top: 245,
            right: 20,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.my_location),
            ),
          ),

          
      //Boton Solicitar
          Positioned(
            bottom: 40,
            left: 120,
            child: FloatingActionButton.extended(
              onPressed: () {
              //_tripCompletedController.navigateToTripCompleted(context);
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
