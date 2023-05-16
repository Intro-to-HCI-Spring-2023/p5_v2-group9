import 'package:flutter/material.dart';

class ChallengeInvites extends StatefulWidget {
  const ChallengeInvites({Key? key});

  @override
  ChallengeInvitesState createState() => ChallengeInvitesState();
}

class ChallengeInvitesState extends State<ChallengeInvites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 200,
      child: Stack(
        children: <Widget>[
          const Positioned(
            top: 30,
            left: 30,
            child: Text(
              'Challenge Invites',
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
          Positioned(
            top: 60,
            left: 0,
            child: Container(
              width: 374,
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 4, // Number of challenge cards
                itemBuilder: (context, index) {
                  return _buildChallengeCard(
                    'assets/images/stroll.png',
                    'Go for a stroll',
                    '30 points',
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 374,
            child: Container(
              width: 40, // Width of the swipeable space
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChallengeCard(String imagePath, String title, String points) {
    return Container(
      width: 127,
      height: 100,
      margin: const EdgeInsets.only(right: 15),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: 127,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15.219942092895508)),
                color: const Color.fromRGBO(31, 52, 39, 1),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 11,
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 29,
            left: 11,
            child: Text(
              points,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 12,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 72,
            left: 11,
            child: Container(
              width: 70,
              height: 25,
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
                    color: Color.fromRGBO(31, 52, 39, 1),
                    fontFamily: 'Roboto',
                    fontSize: 10.769231796264648,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

               
