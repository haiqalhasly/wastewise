// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/HomePage');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minimumSize: Size(350, 60), // Width 200 and height 60
          padding: EdgeInsets.symmetric(
              horizontal: 30, vertical: 15), // Padding inside the button
        ),
        child: Text(
          "Sign In",
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ));
  }
}
