import 'package:flutter/material.dart';

class PeopleKnow extends StatefulWidget {
  const PeopleKnow({Key? key});

  @override
  PeopleKnowState createState() => PeopleKnowState();
}

class PeopleKnowState extends State<PeopleKnow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 113,
      child: Stack(
        children: <Widget>[
          const Positioned(
            top: 0,
            left: 30,
            child: Text(
              'People you may know',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Roboto',
                fontSize: 15,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 28,
            left: 0,
            child: Container(
              width: 372,
              height: 85,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    _buildProfileItem(
                      'assets/images/kate.png',
                      'Kate W.',
                    ),
                    const SizedBox(width: 15),
                    _buildProfileItem(
                      'assets/images/anna.png',
                      'Anna B.',
                    ),
                    const SizedBox(width: 15),
                    _buildProfileItem(
                      'assets/images/doja.png',
                      'Doja C.',
                    ),
                    const SizedBox(width: 15),
                    _buildProfileItem(
                      'assets/images/johnW.png',
                      'John W.',
                    ),
                    const SizedBox(width: 15),
                    _buildProfileItem(
                      'assets/images/brad.png',
                      'Brad N.',
                    ),
                    const SizedBox(width: 15),
                    _buildProfileItem(
                      'assets/images/max.png',
                      'Max T.',
                    ),
                    const SizedBox(width: 15),
                    const Padding(
                      padding: EdgeInsets.only(right: 20), // Add space after the last profile
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem(String imagePath, String name) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 7),
        Text(
          name,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Lora',
            fontSize: 10,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ),
      ],
    );
  }
}
