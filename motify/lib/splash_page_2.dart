import 'package:flutter/material.dart';
import 'package:motify/homepage/home_page.dart';

class LogInSignUp extends StatefulWidget {
  const LogInSignUp({Key? key}) : super(key: key);

  @override
  State<LogInSignUp> createState() => LogInSignUpState();
}

class LogInSignUpState extends State<LogInSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 844,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 247, 246, 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Align(
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 480,
                  left: 80,
                  child: SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              'Welcome to Motify',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Roboto',
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 515,
                  left: 30,
                  child: SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 325,
                            child: Text(
                              'Join the community and take a new challenge every week',
                              textAlign:
                                  TextAlign.center, // Center-align the text
                              style: TextStyle(
                                color: Color.fromRGBO(122, 122, 122, 1),
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 122,
                  left: -15,
                  child: Container(
                    width: 408,
                    height: 344,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/motify.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 647,
                  left: 50,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 290,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(224, 152, 138, 1),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration
                                      .zero, // Set transition duration to zero
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const HomePage(
                                    weeklyChallengeCompleted: false,
                                  ),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding:
                                  EdgeInsets.zero, // Remove default padding
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          width: 290,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(168, 186, 142, 1),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration
                                      .zero, // Set transition duration to zero
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const HomePage(
                                    weeklyChallengeCompleted: false,
                                  ),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding:
                                  EdgeInsets.zero, // Remove default padding
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
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
      ),
    );
  }
}
