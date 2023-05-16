// item_formatter.dart

import 'package:flutter/material.dart';
import 'challenge_templates.dart';

class ChallengeFormatter extends StatelessWidget {
  final ChallengeTemplates challenge;

  ChallengeFormatter(this.challenge);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170,
        height: 150,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 150,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: challenge.color,
                  ))),
          Positioned(
              top: 10,
              left: 11,
              child: Text(
                challenge.title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 248, 246, 1),
                    fontFamily: 'Lora',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 29,
              left: 11,
              child: Text(
                challenge.points,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 248, 246, 1),
                    fontFamily: 'Lora',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
        ]));
  }
}
