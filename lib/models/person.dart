import 'package:flutter/foundation.dart';

class Person {
  // required
  final String name;
  final String image;
  final double distance;
  final bool isDoctor;
  final bool isOnilne;

//only for doctors
  final String category;
  final double rate;
  final bool isVideo;

   Person({
    @required this.name,
    @required this.image,
    @required this.distance,
    @required this.isDoctor,
    @required this.isOnilne,
    this.category,
    this.rate,
    this.isVideo,
  });
}
