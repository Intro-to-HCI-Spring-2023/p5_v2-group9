// item_data.dart

import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/Gymming.dart';

class ChallengeTemplates {
  final Color color;
  final String title;
  final String points;
  final String template; 

  ChallengeTemplates(this.color, this.title, this.points, this.template);
}

List<ChallengeTemplates> items = [
  ChallengeTemplates(Color.fromRGBO(31, 52, 39, 1), 'Gymming', '30 points', '/Gymming'),
  ChallengeTemplates(Color.fromRGBO(142, 129, 77, 1), 'Go for a hike', '40 points', '/Hiking'),
  ChallengeTemplates(Color.fromRGBO(54, 85, 71, 1), 'Read on the Green', '30 points', '/Reading'),
  ChallengeTemplates(Color.fromRGBO(159, 183, 69, 1), 'Swim 10 laps', '50 points', '/Swimming'),
];
