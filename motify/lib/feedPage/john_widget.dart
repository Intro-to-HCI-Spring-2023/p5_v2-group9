import 'package:flutter/material.dart';

class JohnPost extends StatefulWidget {
  const JohnPost({Key? key}) : super(key: key);

  @override
  JohnPostState createState() => JohnPostState();
}

class JohnPostState extends State<JohnPost> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: SizedBox(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        width: 340,
                        height: 425,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(240, 222, 149, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 20,
                      child: Container(
                        width: 300,
                        height: 230,
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
                      top: 15,
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
                    Positioned(
                      top: 25,
                      left: 71.0185546875,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'John',
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
                            '1.5 hour ago',
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
                      bottom: 20,
                      right: 20,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 22,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultTextStyle(
                                style: const TextStyle(
                                  fontWeight: FontWeight.w100, 
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: toggleLike,
                                      child: Icon(
                                        isLiked ? Icons.favorite : Icons.favorite_border_rounded,
                                        color: isLiked ? const Color.fromRGBO(224, 152, 138, 1) : const Color.fromRGBO(41, 45, 50, 1),
                                        size: 26.5,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Icon(
                                      Icons.comment_outlined,
                                      color: Color.fromRGBO(41, 45, 50, 1),
                                      size: 26.5,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const SizedBox(
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
                                    height: 1.4285714286,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

