import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Row(children: [
          // images and discount

          Column(
            children: [
              const SizedBox(height: 5),
              Image.asset(
                'lib/assets/grocerybag.png',
                height: 130,
              ),
              const SizedBox(height: 10),
              const Text('10%'),
              const SizedBox(
                height: 5,
              )
            ],
          ),

          //details
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('exp date: Tomorrow'),
              Text(
                'Omega Eggs 750g',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                children: [Icon(Icons.run_circle_outlined), Text('6 left')],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Text(
                    'RM 15.00',
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'RM13.50',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          //symbols
          const Column(
            children: [
              Icon(FontAwesomeIcons.heart),
              SizedBox(height: 100),
              Icon(FontAwesomeIcons.circlePlus),
            ],
          )
        ]),
      ),
    );
  }
}
