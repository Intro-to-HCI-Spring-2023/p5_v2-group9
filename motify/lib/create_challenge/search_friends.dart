import 'package:flutter/material.dart';
import 'package:motify/common_widgets/bottom_nav.dart';
import 'package:motify/homepage/profile_info.dart';
import 'package:motify/homepage/week_challenge.dart';
import 'package:motify/homepage/challenge_invites.dart';
import 'package:motify/homepage/people_know.dart';
import 'package:motify/create_challenge/dropdown.dart';

class SearchFriends extends StatefulWidget {
  const SearchFriends({Key? key}) : super(key: key);

  @override
  State<SearchFriends> createState() => _SearchFriendsState();
}

class _SearchFriendsState extends State<SearchFriends> {
  // String dropdownvalue = 'Item 1';
  // String selectedItem='Item 1';
  // List<String> filteredItems = [];

  // // List of items in our dropdown menu
  // var items = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];
  

  // @override
  // void initState() {
  //   super.initState();
  //   filteredItems = items;
  // }

  // void filterItems(String query) {
  //   setState(() {
  //     if (query.isNotEmpty) {
  //       filteredItems = items
  //           .where((item) => item.toLowerCase().contains(query.toLowerCase()))
  //           .toList();
  //     } else {
  //       filteredItems = items;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 241, 226),
        title: const Text(
          'Challenge A Friend',
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
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 235, 241, 226),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileInfo(),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20),
                  child: Container(
                    width: 336,
                    height: 120,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    
                    child: Dropdown(),
                    
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: const Color.fromARGB(255, 195, 211, 171),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: const [
          //     ProfileInfo(),
          //     WeekChallenge(),
          //     ChallengeInvites(),
          //     PeopleKnow(),
          //   ],
          // ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
