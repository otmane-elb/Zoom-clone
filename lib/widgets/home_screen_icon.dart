import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeScreenIcon extends StatelessWidget {
  const HomeScreenIcon(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.icon});
  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      icon,
                      size: 30,
                    ),
                  )),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
