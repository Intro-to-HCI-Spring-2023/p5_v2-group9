import 'package:flutter/material.dart';
import 'package:motify/feedPage/amy_widget.dart';
import 'package:motify/feedPage/john_widget.dart';
import 'package:motify/feedPage/jacob_widget.dart';

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
      body: SingleChildScrollView(
        child: Container(
          width: 390,
          height: 1300,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: const <Widget>[
                SizedBox(
                  width: 340,
                  height: 400,
                  child: Center(
                    child: AmyPost(),
                  ),
                ),
                SizedBox(
                  width: 340,
                  height: 30,
                ),
                SizedBox(
                  width: 340,
                  height: 400,
                  child: Center(
                    child: JohnPost(),
                  ),
                ),
                SizedBox(
                  width: 340,
                  height: 30,
                ),
                SizedBox(
                  width: 340,
                  height: 400,
                  child: Center(
                    child: JacobPost(),
                  ),
                ),
              ],
            ),
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
                icon: Icon(Icons.home, size: 40, color: Color.fromRGBO(99, 151, 136, 1)),
                onPressed: () {
                  // Handle home button press
                },
              ),
              IconButton(
                icon: Icon(Icons.add_box, size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                icon: Icon(Icons.window, size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
                onPressed: () {
                  // Handle notifications button press
                },
              ),
              IconButton(
                icon: Icon(Icons.search, size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
                onPressed: () {
                  // Handle notifications button press
                },
              ),
              IconButton(
                icon: Icon(Icons.person, size: 38, color: Color.fromRGBO(99, 151, 136, 1)),
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
