import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motify/challengeAfriend/create_challenge.dart';
import 'package:motify/homepage/home_page.dart';
import 'package:motify/feedPage/amy_widget.dart';
import 'package:motify/feedPage/john_widget.dart';
import 'package:motify/feedPage/jacob_widget.dart';
import 'package:motify/common_widgets/bottom_nav.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motify/homepage/week_challenge.dart';
import 'package:motify/globals.dart';

class CompleteChallenge extends StatefulWidget {
  const CompleteChallenge(
      {Key? key, required this.ChallengeName, required this.callingPageRoute})
      : super(key: key);
  final String ChallengeName;
  final String callingPageRoute;

  @override
  State<CompleteChallenge> createState() => CompleteChallengeState();
}

class CompleteChallengeState extends State<CompleteChallenge> {
  File? image;
  bool def = true;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      this.def = false;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      this.def = false;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 247, 246, 1),
        title: const Text(
          'Complete Challenge',
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
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              //Heading
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.ChallengeName,
                style: TextStyle(
                  color: Color.fromRGBO(5, 19, 6, 1),
                  fontFamily: 'Roboto',
                  fontSize: 17,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            if (this.def == true)
              GestureDetector(
                  child: Container(
                    // Image
                    padding: const EdgeInsets.all(20),
                    width: 290,
                    height: 290,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image:
                            const AssetImage('assets/images/photo-camera.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(240, 222, 149, 1),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: const Text("Select Image"),
                              //content:  const Text("Hey! I'm onLongPress event"),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Photo from Gallery'),
                                  onPressed: () {
                                    pickImage();
                                  },
                                ),
                                TextButton(
                                  child: Text('Photo from Camera'),
                                  onPressed: () {
                                    pickImageC();
                                  },
                                ),
                              ],
                            ));
                  }),
            if (this.def == false)
              GestureDetector(
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 290,
                      height: 290,
                      child: image != null
                          ? Image.file(
                              image!,
                              width: 290,
                              height: 290,
                            )
                          : Text("No image selected")),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: const Text("Select Image"),
                              //content:  const Text("Hey! I'm onLongPress event"),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Photo from Gallery'),
                                  onPressed: () {
                                    pickImage();
                                    Navigator.pop(context);
                                  },
                                ),
                                TextButton(
                                  child: Text('Photo from Camera'),
                                  onPressed: () {
                                    pickImageC();
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ));
                  }),
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: SizedBox(
                width: 290.0,
                child: TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.green)),
                      filled: true,
                      fillColor: Color.fromRGBO(232, 224, 222, 1),
                      hintText: 'Add caption',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: MaterialButton(
                  color: Colors.blue,
                  child: const Text("Save",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    showDialog(
                        //barrierColor: const Color.fromRGBO(240, 222, 149, 1),
                        context: context,
                        builder: (_) => AlertDialog(
                              title: const Text(
                                "Succesfully Completed!",
                                style: TextStyle(
                                  color: Color.fromRGBO(5, 19, 6, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 17,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              actions: <Widget>[
                                Container(
                                  width: double.maxFinite,
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      'Back to Home',
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      if (widget.callingPageRoute ==
                                          '/week_challenge_page') {
                                        print(challenge_invites);
                                        weeklyChallenge = true;
                                        userPoints = (int.parse(userPoints) +
                                                int.parse(weekPoints))
                                            .toString();

                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation,
                                                    secondaryAnimation) =>
                                                HomePage(
                                              weeklyChallengeCompleted:
                                                  weeklyChallenge,
                                              challenge_invites:
                                                  challenge_invites,
                                            ),
                                            transitionDuration: Duration.zero,
                                          ),
                                        );
                                      } else {
                                        if (widget.callingPageRoute ==
                                            '/challenge_invite_page0') {
                                          userPoints = (int.parse(userPoints) +
                                                  int.parse(c1))
                                              .toString();

                                          challenge_invites[0] = true;
                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation,
                                                      secondaryAnimation) =>
                                                  HomePage(
                                                weeklyChallengeCompleted:
                                                    weeklyChallenge,
                                                challenge_invites:
                                                    challenge_invites,
                                              ),
                                              transitionDuration: Duration.zero,
                                            ),
                                          );
                                        } else if (widget.callingPageRoute ==
                                            '/challenge_invite_page1') {
                                          challenge_invites[1] = true;
                                          userPoints = (int.parse(userPoints) +
                                                  int.parse(c2))
                                              .toString();

                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation,
                                                      secondaryAnimation) =>
                                                  HomePage(
                                                weeklyChallengeCompleted:
                                                    weeklyChallenge,
                                                challenge_invites:
                                                    challenge_invites,
                                              ),
                                              transitionDuration: Duration.zero,
                                            ),
                                          );
                                        } else if (widget.callingPageRoute ==
                                            '/challenge_invite_page2') {
                                          challenge_invites[2] = true;
                                          userPoints = (int.parse(userPoints) +
                                                  int.parse(c3))
                                              .toString();

                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation,
                                                      secondaryAnimation) =>
                                                  HomePage(
                                                weeklyChallengeCompleted:
                                                    weeklyChallenge,
                                                challenge_invites:
                                                    challenge_invites,
                                              ),
                                              transitionDuration: Duration.zero,
                                            ),
                                          );
                                        } else if (widget.callingPageRoute ==
                                            '/challenge_invite_page3') {
                                          challenge_invites[3] = true;
                                          userPoints = (int.parse(userPoints) +
                                                  int.parse(c4))
                                              .toString();

                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation,
                                                      secondaryAnimation) =>
                                                  HomePage(
                                                weeklyChallengeCompleted:
                                                    weeklyChallenge,
                                                challenge_invites:
                                                    challenge_invites,
                                              ),
                                              transitionDuration: Duration.zero,
                                            ),
                                          );
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ));
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
