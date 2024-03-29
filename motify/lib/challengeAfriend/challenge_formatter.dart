// item_formatter.dart

import 'package:flutter/material.dart';
import 'challenge_templates.dart';

class ChallengeFormatter extends StatelessWidget {
  
  final ChallengeTemplates challenge;
  final String friendName;  //ChangesMade

  // ChallengeFormatter(this.challenge); //// ChangesMade
  const ChallengeFormatter({Key? key, required this.challenge, required this.friendName}): super(key: key);

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
              top: 15,
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
              top: 35,
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

          //use it button
          Padding(
              padding: EdgeInsets.only(top: 85, left: 10, bottom:25),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Color.fromRGBO(255, 248, 246, 1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        maximumSize: MaterialStateProperty.all(Size(70, 40)),
                      ),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0.0),
                          child: Text("Use it!",
                              style: TextStyle(
                                  color: Color.fromRGBO(31, 52, 39, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal
                                  ))),
                      onPressed: () {
                        print("This button is just pressed!");
                        Navigator.pushNamed(context, challenge.template, arguments: this.friendName); //ChangesMade
                      })
                      
                  ))
        ]));
  }
}
