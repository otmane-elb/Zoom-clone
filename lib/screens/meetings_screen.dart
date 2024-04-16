import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/jitsi_methods.dart';

import '../widgets/home_screen_icon.dart';

class MeetingsScreen extends StatelessWidget {
  MeetingsScreen({super.key});
  final JitsiMethods _jitsiMethods = JitsiMethods();
  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(100000000) + 10000000).toString();
    _jitsiMethods.joinMeeting(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeScreenIcon(
              onPressed: createNewMeeting,
              title: 'New meeting',
              icon: Icons.videocam,
            ),
            HomeScreenIcon(
              onPressed: () {},
              title: 'New meeting',
              icon: Icons.add_box_rounded,
            ),
            HomeScreenIcon(
              onPressed: () {},
              title: 'Schedule',
              icon: Icons.calendar_today,
            ),
            HomeScreenIcon(
              onPressed: () {},
              title: 'Share screen',
              icon: Icons.arrow_upward_rounded,
            ),
          ],
        ),
        Expanded(
            child: Center(
          child: Text(
            "Create/Join a meeting",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ))
      ],
    );
  }
}
