import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tadeotax_android/pages/user/screen_user.dart';

class ScreenUserController with ChangeNotifier{

//Marcadores del mapa
  final Map<MarkerId,Marker> _markers = {};
  Set<Marker> get markers => _markers.values.toSet();


//Posicion inicial de la pagina 
  final  initialCameraPosition = const CameraPosition(
  target: LatLng(4.606566691342543, -74.06782757245796),
  zoom: 18
  );


  void navigateToScreenUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen_user(),
      ),
    );
  }



}