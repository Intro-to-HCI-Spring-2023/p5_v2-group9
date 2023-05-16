
import 'package:flutter/material.dart';

class JacobPost extends StatefulWidget {
  const JacobPost({Key? key});

  @override
  JacobPostState createState() => JacobPostState();
}

class JacobPostState extends State<JacobPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                          height: 400,
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
                              image: AssetImage('assets/images/gym.png'),
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
                              image: AssetImage('assets/images/jacob.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(41, 41),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 19,
                        left: 71.0185546875,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Jacob',
                              style: TextStyle(
                                color: Color.fromRGBO(5, 19, 6, 1),
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '5 hour ago',
                              style: TextStyle(
                                color: Color.fromRGBO(5, 19, 6, 0.5),
                                fontFamily: 'Roboto',
                                fontSize: 10,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 300,
                        left: 22,
                        child: SizedBox(
                          width: 296,
                          height: 136,
                          child: Text(
                            'Finally got the time for the gym today. This play is honestly so nice. Just gotta remember to go more often I guess.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(5, 19, 6, 1),
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.4285714286,
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
