import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/create_challenge.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key});

  @override
  DropdownState createState() => DropdownState();
}

class DropdownState extends State<Dropdown> {
  String dropdownvalue = 'Select a friend';
  
// List of items in our dropdown menu
  var items = [
    'Select a friend',
    'Amy',
    'John',
    'Ravi',
    'Victoria',
    'Jessica',
    'Gibson',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 355,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
      //Padding(
        //padding: const EdgeInsets.only(left: 20, top: 10),
        children: [DropdownButtonHideUnderline(
          child: DropdownButton(
            // Initial Value
            value: dropdownvalue,
            //hint: Text('Select an item'),
            // Down Arrow Icon
            //icon: const Icon(Icons.keyboard_arrow_down),
            //isExpanded: true,
            // dropdownColor: Colors.amber,
            dropdownColor: Colors.transparent,
            elevation: 0,
            // iconDisabledColor: true,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                fontFamily: "Roboto",
                //fontWeight: FontWeight.bold
                ),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                // alignment: AlignmentDirectional.topStart,
                alignment: AlignmentDirectional.centerStart,

                value: items,

                child: //Text(items),
                    Container(
                  decoration: BoxDecoration(
                    /*
                                boxShadow: [ BoxShadow(
                  color: Colors.black,
                  offset: const Offset(
                    5.0,
                    5.0,
                  ), //Offset
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                                ],
                                */

                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 163, 184, 132),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  // child: Text(items),
                  child: Container(
                      child: Text(items),
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  width: 250,
                ),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
                if (dropdownvalue != 'Select a friend')
                {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      // pageBuilder: (context, animation, secondaryAnimation) => const SearchFriends(),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          CreateChallenge(friendName: dropdownvalue),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child; // Return the child directly without any transition animation
                      },
                      transitionDuration: Duration(
                          milliseconds:
                              0), // Set the transition duration to 0ms
                    ),
                  );
                }
                ;
              });
            },
            // menuMaxHeight: 200, // Set the maximum height of the dropdown menu
            // menuMaxWidth: 200, // Set the width of the dropdown menu
          ),
        ),
        ]
      ),
    ));
  }
}
