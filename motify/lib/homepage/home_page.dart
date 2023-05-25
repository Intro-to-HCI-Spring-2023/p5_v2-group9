import 'package:flutter/material.dart';
import 'package:motify/common_widgets/bottom_nav.dart';
import 'package:motify/homepage/profile_info.dart';
import 'package:motify/homepage/week_challenge.dart';
import 'package:motify/homepage/challenge_invites.dart';
import 'package:motify/homepage/people_know.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    this.weeklyChallengeCompleted = false,
    this.challenge_invites = const [false, false, false, false],
  }) : super(key: key);

  final bool? weeklyChallengeCompleted;
  final List<bool> challenge_invites;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileInfo(),
              if (widget.weeklyChallengeCompleted != null &&
                  widget.weeklyChallengeCompleted == true)
                WeekChallenge(completed: true)
              else
                WeekChallenge(completed: false),
              ChallengeInvites(completedList: widget.challenge_invites),
              PeopleKnow(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
