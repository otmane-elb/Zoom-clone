import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(buttonColor)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}
