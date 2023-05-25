import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motify/challengeAfriend/Gymming.dart';
import 'package:motify/challengeAfriend/Hiking.dart';
import 'package:motify/challengeAfriend/Reading.dart';
import 'package:motify/challengeAfriend/Swimming.dart';
import 'package:motify/homepage/home_page.dart';
import 'package:motify/splash_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashscreenWidget(duration: Duration(seconds: 3)),
      routes: {
        '/Gymming': (context) => const Gymming(),
        '/Hiking': (context) => const Hiking(),
        '/Reading': (context) => const Reading(),
        '/Swimming': (context) => const Swimming(),
      },
    );
  }
}

class SplashscreenWidget extends StatefulWidget {
  final Duration duration;

  const SplashscreenWidget({Key? key, required this.duration}) : super(key: key);

  @override
  _SplashscreenWidgetState createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget> {
  @override
  void initState() {
    super.initState();

    Timer(widget.duration, () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration.zero, // Set transition duration to zero
          pageBuilder: (context, animation, secondaryAnimation) => const LogInSignUp(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 247, 246, 1),
      body: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 247, 246, 1),
        ),
        child: Stack(
          children: <Widget>[
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
          ],
        ),
      ),
    );
  }
}
