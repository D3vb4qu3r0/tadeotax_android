import 'package:flutter/material.dart';
import 'package:tadeotax_android/pages/user/trip_completed_user.dart';

class TripCompletedController{

  void navigateToTripCompleted(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TripUser(),
      ),
    );
  }

}