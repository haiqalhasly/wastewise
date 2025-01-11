import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Cartanimationpage extends StatelessWidget {
  const Cartanimationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/CartPage');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Lottie.network(
                'https://lottie.host/4516defc-bf88-4d4a-b71a-92899446e749/w37XJj6RQ9.json'),
          ),
        ),
      ),
    );
  }
}
