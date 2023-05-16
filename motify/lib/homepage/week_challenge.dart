import 'package:flutter/material.dart';

class WeekChallenge extends StatefulWidget {
  const WeekChallenge({Key? key});

  @override
  WeekChallengeState createState() => WeekChallengeState();
}

class WeekChallengeState extends State<WeekChallenge> {
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
                        image:  DecorationImage(
                          image: const AssetImage('assets/images/stroll.png'),
                          fit: BoxFit.fitWidth,
                          colorFilter: ColorFilter.mode(
                            const Color.fromRGBO(54, 85, 71, 1).withOpacity(.65), // Apply the intense green hue here
                            BlendMode.srcATop,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 12.5,
                    left: 15,
                    child: Text(
                      'Go for a stroll',
                      textAlign: TextAlign.left,
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
                    top: 36.25,
                    left: 15,
                    child: Text(
                      '50 points',
                      textAlign: TextAlign.left,
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
                  Positioned(
                    top: 85,
                    left: 15,
                    child: Container(
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.153846740722656),
                        color: const Color.fromRGBO(255, 248, 246, 1),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Button onPressed logic goes here
                        },
                        child: const Text(
                          'Complete',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(54, 85, 71, 1),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                        ),
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

