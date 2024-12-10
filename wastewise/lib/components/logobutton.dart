// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Logobutton extends StatelessWidget {
  final String imagePath;

  const Logobutton({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
