import 'package:flutter/material.dart';
import 'package:motify/feedPage/amy_widget.dart';
import 'package:motify/feedPage/john_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => FeedPageState();
}

class FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 247, 246, 1),
        title: const Text(
          'My Feed',
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
      body: SingleChildScrollView(
        child: Container(
          width: 390,
          height: 844,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 25,
                child: SizedBox(
                  width: 340,
                  height: 700,
                  child: Stack(
                    children: const <Widget>[
                      AmyPost(),
                      JohnPost(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(255, 247, 246, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, size: 30),
                onPressed: () {
                  // Handle home button press
                },
              ),
              IconButton(
                icon: Icon(Icons.search, size: 30),
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications, size: 30),
                onPressed: () {
                  // Handle notifications button press
                },
              ),
              IconButton(
                icon: Icon(Icons.person, size: 30),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
