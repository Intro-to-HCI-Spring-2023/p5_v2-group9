import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              top: 44,
              left: 0,
              child: SizedBox(
                width: 390,
                height: 41,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 390,
                        height: 41,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 242, 239, 1),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      left: 161,
                      child: Text(
                        'My Feed',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(5, 19, 6, 1),
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              child: ElevatedButton(
                onPressed: () {
                  // Button click logic here
                },
                child: const Text(
                  'heyooooo',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
