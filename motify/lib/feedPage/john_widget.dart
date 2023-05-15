import 'package:flutter/material.dart';

class JohnPost extends StatefulWidget {
  const JohnPost({super.key});

  @override
  JohnPostState createState() => JohnPostState();
}

class JohnPostState extends State<JohnPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 390,
          height: 844,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: SizedBox(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          width: 340,
                          height: 385,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(249, 200, 191, 1),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 54,
                        left: 20,
                        child: Container(
                          width: 300,
                          height: 236,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(224, 152, 138, 1),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/sunset2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 9,
                        left: 26,
                        child: Container(
                          width: 41,
                          height: 41,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            image: DecorationImage(
                              image: AssetImage('assets/images/john.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(41, 41),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 19,
                        left: 71.0185546875,
                        child: Text(
                          'John',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(5, 19, 6, 1),
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 41,
                        left: 71.0185546875,
                        child: Text(
                          '1.5 hours ago',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(5, 19, 6, 0.5),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 300,
                        left: 22,
                        child: SizedBox(
                          width: 296,
                          height: 136,
                          child: Text(
                            'Hike with Amy today. Such a beautiful view. God I love the outdoors. This is such a cool place. wish i could...',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(5, 19, 6, 1),
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.4285714285714286,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
