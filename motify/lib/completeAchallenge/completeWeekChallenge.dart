import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motify/challengeAfriend/create_challenge.dart';
import 'package:motify/completeAchallenge/newHome.dart';
import 'package:motify/homepage/home_page.dart';
import 'package:motify/feedPage/amy_widget.dart';
import 'package:motify/feedPage/john_widget.dart';
import 'package:motify/feedPage/jacob_widget.dart';
import 'package:motify/common_widgets/bottom_nav.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class CompleteWeekChallenge extends StatefulWidget {
  const CompleteWeekChallenge({Key? key}) : super(key: key);

  @override
  State<CompleteWeekChallenge> createState() => CompleteWeekChallengeState();
}

class CompleteWeekChallengeState extends State<CompleteWeekChallenge> {
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
              child: const Text(
                "Go for a stroll",
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
              child: const SizedBox(
                width: 290.0,
                child: TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add caption...',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(5, 19, 6, 1),
                      fontFamily: 'Lora',
                      fontSize: 13,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
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
                              //content:  const Text("Hey! I'm onLongPress event"),
                              actions: <Widget>[
                                TextButton(
                                  child: Text(
                                    'Back to Home',
                                    textAlign: TextAlign.center,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            const newHomePage(),
                                        transitionDuration: Duration.zero,
                                      ),
                                    );
                                    // Button onPressed logic goes here
                                  },
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
