import 'package:flutter/material.dart';
import 'package:motify/feedPage/feed_page.dart';
import 'package:motify/completeAchallenge/completeChallenge.dart';

class ChallengeInvites extends StatefulWidget {
  const ChallengeInvites(
      {Key? key, this.completedList = const [false, false, false, false]})
      : super(key: key);
  final List<bool> completedList;

  @override
  ChallengeInvitesState createState() => ChallengeInvitesState();
}

class ChallengeInvitesState extends State<ChallengeInvites> {
  late List<bool> completedList;

  @override
  void initState() {
    super.initState();
    if (widget.completedList != null) {
      completedList = widget.completedList;
    } else {
      completedList = [false, false, false, false];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390,
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
            child: SizedBox(
              width: 390,
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 4, // Number of challenge cards
                itemBuilder: (context, index) {
                  return _buildChallengeCard(
                    index: index,
                    color: _getCardColor(index), // Use the _getCardColor method
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

  Color _getCardColor(int index) {
    // Set color based on the index or any other logic
    if (index == 0) {
      return Color.fromRGBO(31, 52, 39, 1);
    } else if (index == 1) {
      return Color.fromRGBO(224, 152, 138, 1);
    } else if (index == 2) {
      return Color.fromRGBO(54, 85, 71, 1);
    } else if (index == 3) {
      return Color.fromRGBO(170, 188, 143, 1);
    }
    return Colors.white; // Default color
  }

  Widget _buildChallengeCard({required int index, required Color color}) {
    String imagePath = '';
    String title = '';
    String points = '';
    bool completed = false;

    // Set content based on the index or any other logic
    if (index == 0) {
      imagePath = 'assets/images/stroll.png';
      title = 'Swim 10 laps';
      points = '30 points';
      completed = widget.completedList[index];
    } else if (index == 1) {
      imagePath = 'assets/images/run.png';
      title = 'Go for a hike';
      points = '40 points';
      completed = widget.completedList[index];
    } else if (index == 2) {
      imagePath = 'assets/images/cycle.png';
      title = 'Go stargazing';
      points = '20 points';
      completed = widget.completedList[index];
    } else if (index == 3) {
      imagePath = 'assets/images/swim.png';
      title = 'Go on a DOC trip';
      points = '60 points';
      completed = widget.completedList[index];
    }

    Widget childWidget;
    if (completed == true) {
      return SizedBox.shrink(); // Skip the item if not completed
    }

    return GestureDetector(
      onTap: () {
        // Navigate to the desired screen based on the index or any other logic
        if (index == 0) {
          if (!completed) {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CompleteChallenge(
                        ChallengeName: title,
                        callingPageRoute: '/challenge_invite_page0'),
                transitionDuration: Duration.zero,
              ),
            );
          } else {}
        } else if (index == 1) {
          if (!completed) {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CompleteChallenge(
                        ChallengeName: title,
                        callingPageRoute: '/challenge_invite_page1'),
                transitionDuration: Duration.zero,
              ),
            );
          } else {}
        } else if (index == 2) {
          if (!completed) {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CompleteChallenge(
                        ChallengeName: title,
                        callingPageRoute: '/challenge_invite_page2'),
                transitionDuration: Duration.zero,
              ),
            );
          } else {}
        } else if (index == 3) {
          if (!completed) {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CompleteChallenge(
                        ChallengeName: title,
                        callingPageRoute: '/challenge_invite_page3'),
                transitionDuration: Duration.zero,
              ),
            );
          } else {}
        }
      },
      child: Container(
        width: 127,
        height: 110,
        margin: const EdgeInsets.only(right: 15),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                width: 127,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(15.219942092895508)),
                  color: color, // Use the provided color parameter
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
                height: 27,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 248, 246, 1),
                ),
                child: TextButton(
                  onPressed: () {
                    if (index == 0) {
                      print("0 pushed");
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation,
                                  secondaryAnimation) =>
                              CompleteChallenge(
                                  ChallengeName: title,
                                  callingPageRoute: '/challenge_invite_page0'),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation,
                                  secondaryAnimation) =>
                              CompleteChallenge(
                                  ChallengeName: title,
                                  callingPageRoute: '/challenge_invite_page1'),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    } else if (index == 2) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation,
                                  secondaryAnimation) =>
                              CompleteChallenge(
                                  ChallengeName: title,
                                  callingPageRoute: '/challenge_invite_page2'),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    } else if (index == 3) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation,
                                  secondaryAnimation) =>
                              CompleteChallenge(
                                  ChallengeName: title,
                                  callingPageRoute: '/challenge_invite_page3'),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Complete',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(31, 52, 39, 1),
                      fontFamily: 'Roboto',
                      fontSize: 10,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
