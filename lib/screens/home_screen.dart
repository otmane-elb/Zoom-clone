import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/history_mettings_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

import '../widgets/home_screen_icon.dart';
import 'meetings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    MeetingsScreen(),
    HistoryMeeingsScreen(),
    Text("Contacts"),
    Text("Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Meet & chat",
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'meet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: 'Meetings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'contacts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
          ]),
      body: pages[_page],
    );
  }
}
