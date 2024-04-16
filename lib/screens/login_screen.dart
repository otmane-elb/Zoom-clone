// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Start or join a meeting',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Image.asset("assets/onboarding.jpg"),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () async {
              bool res = await _authMethods.signInWithGoogle(context);
              if (res) {
                Navigator.pushNamed(context, '/home');
              }
              //Function
            },
            title: 'Google Sign-In',
          )
        ],
      ),
    );
  }
}
