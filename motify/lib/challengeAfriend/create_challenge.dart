import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/challenge_formatter.dart';
import 'package:motify/challengeAfriend/challenge_templates.dart';
import 'package:motify/challengeAfriend/craft_new_challenge.dart';
import 'package:motify/challengeAfriend/interests.dart';
import 'package:motify/challengeAfriend/interests_formatter.dart';
import 'package:motify/common_widgets/bottom_nav.dart';

class CreateChallenge extends StatefulWidget {
  const CreateChallenge({Key? key}) : super(key: key);

  @override
  State<CreateChallenge> createState() => CreateChallengeState();
}

class CreateChallengeState extends State<CreateChallenge> {
  void onPressed() {
    print('Craft a challenge pressed!');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CraftChallenge()),
    );

  }

  @override
  // Figma Flutter Generator ScrolloptionsWidget - GROUP
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 247, 246, 1),
          title: const Text(
            'Create A Challenge',
            style: TextStyle(
              color: Color.fromRGBO(5, 19, 6, 1),
              fontFamily: 'Roboto',
              fontSize: 18,
              letterSpacing: 0,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          elevation: 0.0, // Set elevation to 0.0 to remove the shadow
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(5, 19, 6, 1),
          ),
        ),
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the left
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Container(
                width: 360,
                height: 92,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 355,
                      height: 92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffc3d3aa),
                      ),
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 18,
                        bottom: 19,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 330,
                            height: 55,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/hunter.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 7,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          child: Text(
                                        'Hunter Jackson',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      )),
                                      Positioned(
                                          child: Text(
                                        '\n110 points',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5),
                                      ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ), //Hunter Jackson name card ends

            // challenge name card begins
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Container(
                width: 360,
                height: 92,
                child: Stack(
                  children: [
                    Container(
                      width: 360,
                      height: 92,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 350,
                            height: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffc3d3aa),
                            ),
                            padding: const EdgeInsets.only(
                              left: 27,
                              right: 150,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Challenge",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 12,
                      child: Container(
                        width: 179,
                        height: 69,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 179,
                              height: 69,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0x9b748658),
                              ),
                              padding: const EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                          child: Text(
                                        'Amy',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      )),
                                      Positioned(
                                          child: Text(
                                        '\n120 points',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5),
                                      ))
                                    ],
                                  ),
                                  SizedBox(width: 40),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/images/amy.avif'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //challenge name card ends

            //likes to section begins
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                top: 5.0,
                bottom: 8.0,
              ),
              child: Text(
                'Amy likes to',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                height: 140, // Adjust the height as per your requirement
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: likes.length,
                  itemBuilder: (BuildContext context, int index) {
                    Interests interest = likes[index];
                    return InterestsFormatter(interest);
                  },
                ),
              ),
            ),
            //likes to section ends

            //challenge templates begin
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 18.0,
                top: 2.0,
                bottom: 8.0,
              ),
              child: Text(
                'Suggested Challenge Templates',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                height: 140, // Adjust the height as per your requirement
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    ChallengeTemplates challenge = items[index];
                    return ChallengeFormatter(challenge);
                  },
                ),
              ),
            ),
            //challenge templates end

            //craft a challenge begins

            Padding(
              padding: const EdgeInsetsDirectional.only(start: 18.0, top: 0.0),
              child: Text(
                'Feeling Innovative?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
                onTap: onPressed,
                child: Container(
                    width: 370,
                    height: 55,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 5,
                          left: 19,
                          child: Container(
                              width: 350,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color.fromRGBO(
                                    116, 134, 88, 0.6100000143051147),
                              ))),
                      Positioned(
                          top: 15,
                          left: 112,
                          child: Text(
                            'Craft a New Challenge',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          )),
                    ])))

            //craft a challenge ends
          ],
        ),
        bottomNavigationBar: const BottomNav());
  }
}
