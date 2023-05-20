import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key});

  @override
  DropdownState createState() => DropdownState();
}

class DropdownState extends State<Dropdown> {
  String dropdownvalue = 'Amy';
// List of items in our dropdown menu
  var items = [
    'Amy',
    'John',
    'Jacob',
    'Daniel',
    'Larry',
    'Gibson',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Container(
      width: 336,
      height: 200,

      child: Padding(
                      padding: const EdgeInsets.only(left: 25, top:10),
     child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        // Initial Value
                        value: dropdownvalue,
                        //hint: Text('Select an item'),
                        // Down Arrow Icon
                        //icon: const Icon(Icons.keyboard_arrow_down),
                        //isExpanded: true,
                        // dropdownColor: Colors.amber,
                        dropdownColor: Colors.transparent ,
                        elevation: 0,
                        // iconDisabledColor: true,
                        style: const TextStyle(
                            color: Color.fromARGB(255,0,0,0),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        
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
                               padding: EdgeInsets.fromLTRB(15, 0,0,0)
                              ),
                              width: 254,
                            ),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        // menuMaxHeight: 200, // Set the maximum height of the dropdown menu
                        // menuMaxWidth: 200, // Set the width of the dropdown menu
                      
                      ),
),
                    ),
                    
    )
    );
  }
}

