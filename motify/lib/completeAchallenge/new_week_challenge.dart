import 'package:flutter/material.dart';
import 'package:motify/feedPage/feed_page.dart';
import 'package:motify/completeAchallenge/completeWeekChallenge.dart';

class newWeekChallenge extends StatefulWidget {
  const newWeekChallenge({Key? key});

  @override
  newWeekChallengeState createState() => newWeekChallengeState();
}

class newWeekChallengeState extends State<newWeekChallenge> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 346,
        height: 200,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 60,
              child: Container(
                width: 346,
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        width: 346,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: const Color.fromRGBO(54, 85, 71, 1),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 40,
                      left: 90,
                      child: Text(
                        'Challenge completed!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lora',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 107,
                      child: Text(
                        'Come back next week',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lora',
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 40,
              left: 10,
              child: Text(
                'This Week’s Challenge',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(5, 19, 6, 1),
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
