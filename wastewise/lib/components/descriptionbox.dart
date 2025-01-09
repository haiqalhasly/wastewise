import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Descriptionbox extends StatelessWidget {
  const Descriptionbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        color: const Color(0xFF396241),
        padding: const EdgeInsets.all(10),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.moneyCheckDollar,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'RM 2.99',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '15 - 20 mins',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
