import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tadeotax_android/pages/user/screen_user_controller.dart';

class screen_user extends StatelessWidget {
  const screen_user({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider<ScreenUserController>(
      create: (_) => ScreenUserController(),
      child: Scaffold(
        body: Stack(
          children: [
            Consumer <ScreenUserController>(builder: (_,controller, __ ) =>  GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: controller.initialCameraPosition,
              //myLocationButtonEnabled: true,
              zoomControlsEnabled: false,
              markers: controller.markers,
              onMapCreated: (GoogleMapController controller) {
                // Do something with the controller if needed.
              },
            ),
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
      ),
      );
  }
}
