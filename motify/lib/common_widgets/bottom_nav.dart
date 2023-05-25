import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/create_challenge.dart';
import 'package:motify/feedPage/feed_page.dart';
import 'package:motify/homepage/home_page.dart';
import 'package:motify/create_challenge/search_friends.dart';
import 'package:motify/globals.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromRGBO(255, 247, 246, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home,
                  size: 40, color: Color.fromRGBO(99, 151, 136, 1)),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        HomePage(
                      weeklyChallengeCompleted: weeklyChallenge,
                      challenge_invites: challenge_invites,
                    ),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return child; // Return the child directly without any transition animation
                    },
                    transitionDuration: Duration(
                        milliseconds: 0), // Set the transition duration to 0ms
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.add_box,
                  size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
              onPressed: () {
                // Handle search button press
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const SearchFriends(),
                    //pageBuilder: (context, animation, secondaryAnimation) => const CreateChallenge(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return child; // Return the child directly without any transition animation
                    },
                    transitionDuration: Duration(
                        milliseconds: 0), // Set the transition duration to 0ms
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.window,
                  size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const FeedPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return child; // Return the child directly without any transition animation
                    },
                    transitionDuration: Duration(
                        milliseconds: 0), // Set the transition duration to 0ms
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.search,
                  size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
              onPressed: () {
                // Handle notifications button press
              },
            ),
            IconButton(
              icon: Icon(Icons.person,
                  size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
              onPressed: () {
                // Handle profile button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
