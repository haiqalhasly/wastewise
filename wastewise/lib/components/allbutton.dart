import 'package:flutter/material.dart';

class AllButton extends StatelessWidget {
  final String text;
  final Color color;

  const AllButton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(130, 40)),
        child: Text(text));
  }
}
