import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motify/challengeAfriend/challenge_formatter.dart';
import 'package:motify/challengeAfriend/challenge_templates.dart';
import 'package:motify/challengeAfriend/create_challenge.dart';
import 'package:motify/challengeAfriend/interests.dart';
import 'package:motify/challengeAfriend/interests_formatter.dart';
import 'package:motify/common_widgets/bottom_nav.dart';

class Gymming extends StatefulWidget {
  const Gymming({Key? key}) : super(key: key);

  @override
  State<Gymming> createState() => GymmingState();
}

class GymmingState extends State<Gymming> {
   TextEditingController _textEditingController1 = TextEditingController();
   TextEditingController _textEditingController2 = TextEditingController();
   TextEditingController _textEditingController3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController1 = TextEditingController(text: 'Gymming with a friend');
    _textEditingController2 = TextEditingController(text: 'Break a leg! Your challenge is to have a gym session with a friend this week...');
    _textEditingController3 = TextEditingController(text: '30');
  }

  void _sendChallenge(BuildContext context) {
    String text1 = _textEditingController1.text;
                            String text2 = _textEditingController2.text;
                            String text3 = _textEditingController3.text;
                            print('Text 1: $text1');
                            print('Text 2: $text2');
                            print('Text 3: $text3');
    // Perform the action of sending the challenge
    showDialog(
      context: context,
      builder: (BuildContext context) {
         return AlertDialog(
          alignment: Alignment.center,
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Colors.black
            ),
          title: Text('Challenge '+ '`' +text1 + '`'  + 'sent to Amy!'),
          // contentTextStyle: TextStyle(
          //   fontFamily: 'Roboto',
          //   fontSize: 14,
          //   color: Colors.black 
          //   ),
          // content: Text('sent to Amy'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateChallenge()),
    );
              },
              child: Text(
                'OK',
                style : TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black 
                  )
                ),
              style: ButtonStyle(
                alignment: Alignment.bottomCenter,
                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(173, 193, 143, 1))
                                  )
            ),
          ],
        );
      },
    );
  }

  @override
  // Figma Flutter Generator ScrolloptionsWidget - GROUP
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 247, 246, 1),
          title: const Text(
            'Craft A Challenge',
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

            //text fields begin

            Padding(
              padding: EdgeInsets.all(14.0),
              child: Container(
                height: 300,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: TextField(
                            controller: _textEditingController1,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide:
                                        BorderSide(color: Colors.green)),
                                filled: true,
                                fillColor: Color.fromRGBO(232, 224, 222, 1),
                                hintText: 'Enter the title...',
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide.none)),
                            style: TextStyle(color: Colors.black),
                            textAlignVertical: TextAlignVertical.center)),
                    SizedBox(height: 2.0),
                    Expanded(
                        flex: 2,
                        child: TextField(
                          controller: _textEditingController2,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.green)),
                            filled: true,
                            fillColor: Color.fromRGBO(232, 224, 222, 1),
                            hintText: 'Add a description...',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none),
                          ),
                          style: TextStyle(color: Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                        )),
                    Container(
                        width: 340,
                        height: 50,
                        padding: const EdgeInsets.only(left: 150, right: 0),
                        child: TextField(
                          controller: _textEditingController3,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.green)),
                            filled: true,
                            fillColor: Color.fromRGBO(232, 224, 222, 1),
                            hintText: 'Set Points...',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none),
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlignVertical: TextAlignVertical.center,
                        )),
                    SizedBox(height: 20),
                    Container(
                        width: 340,
                        height: 50,
                        padding: const EdgeInsets.only(left: 150, right: 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(173, 193, 143, 1))),
                          onPressed: () => _sendChallenge(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Send Challenge',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                                      SizedBox(width: 2),
                              Icon(Icons.arrow_forward_ios_rounded ,
                                  color: Colors.black, size: 30),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),

            //text fields end

            //points begins

            //points ends
          ],
        ),
        bottomNavigationBar: const BottomNav());
  }
}
