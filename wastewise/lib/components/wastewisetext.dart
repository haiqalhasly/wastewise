import 'package:flutter/material.dart';

class Wastewisetext extends StatelessWidget {
  const Wastewisetext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
                "Waste Wise.",
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 36,
                  shadows: [
                    Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 10,
                        color: Colors.black),
                  ],
                ),
              );
  }
}