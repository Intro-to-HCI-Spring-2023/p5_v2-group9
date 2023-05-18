// item_data.dart

import 'package:flutter/material.dart';

class Interests {
  final String imageUrl;
  final String title;

  Interests(this.imageUrl, this.title);
}

List<Interests> likes = [
  Interests('assets/images/musicicon.png', "Play Music"),
  Interests('assets/images/skateicon.png', "Skate"),
  Interests('assets/images/gymicon.png', "Workout"),
  Interests('assets/images/footballicon.png', "Play Football")
];
