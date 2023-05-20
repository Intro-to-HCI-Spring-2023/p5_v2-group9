// item_formatter.dart

import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/interests.dart';

class InterestsFormatter extends StatelessWidget {
  final Interests interest;

  InterestsFormatter(this.interest);

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
                    color: Color.fromRGBO(195, 211, 171, 1),
                  ))),
          Container(
            padding: const EdgeInsets.only(
                          bottom : 80,
                          right: 20
                        ),
                        alignment: Alignment.center,
              child: Text(
                interest.title,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lora',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    ),
              )),
          Positioned(
              top: 60,
              left: 50,
              child: Image.asset(
            interest.imageUrl,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          )
               ),
        ]));
  }
}
