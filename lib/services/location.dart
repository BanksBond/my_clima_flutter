import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  late double longitude;
  late double latitude;

  Future<void> getCurrentLocation() async {
    try{
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;

      print(permission);
    } catch(e) {
      print(e);
    }
  }
}


// void getLocation() async {
//   LocationPermission permission = await Geolocator.requestPermission();
//   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
//   print(position);
// }