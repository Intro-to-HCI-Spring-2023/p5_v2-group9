import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/challenge_formatter.dart';
import 'package:motify/challengeAfriend/challenge_templates.dart';

class CreateChallenge extends StatefulWidget {
  const CreateChallenge({Key? key}) : super(key: key);

  @override
  State<CreateChallenge> createState() => CreateChallengeState();
}

class CreateChallengeState extends State<CreateChallenge> {
  @override
  // Figma Flutter Generator ScrolloptionsWidget - GROUP
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 247, 246, 1),
        title: const Text(
          'Challenge a Friend',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Roboto',
            fontSize: 18,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
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
            child: Text(
              'Suggested Challenge Templates',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              height: 200, // Adjust the height as per your requirement
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
        ],
      ),
    );
  }
}
