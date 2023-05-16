import 'package:flutter/material.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key});

  @override
  ProfileInfoState createState() => ProfileInfoState();
}

class ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 55,
      margin: const EdgeInsets.only(left: 20),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(217, 217, 217, 1),
                border: Border.all(
                  color: const Color.fromRGBO(5, 19, 6, 1),
                  width: 1.5,
                ),
                borderRadius: const BorderRadius.all(Radius.elliptical(55, 55)),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/hunter.png'),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 65,
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns the text to the left
                children: const <Widget>[
                  Text(
                    'Hunter Jackson',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(5, 19, 6, 1),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold, // Make the text super bold
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '60 points',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(5, 19, 6, 1),
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
