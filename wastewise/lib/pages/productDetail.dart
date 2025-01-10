import 'package:flutter/material.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/grocerybag.png',
              height: 300,
            ),
            const Text(
              'Grocery',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'RM 6.19',
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              SizedBox(
                width: 5,
              ),
              const Text(
                'RM 6.19',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size(350, 60), // Width 200 and height 60
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
