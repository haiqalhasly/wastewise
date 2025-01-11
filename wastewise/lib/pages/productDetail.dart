import 'package:flutter/material.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        title: const Center(
          child: Text(
            "Details",
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 239, 239, 239),
              // boxShadow: [BoxShadow(blurRadius: 1)]
            ),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'lib/assets/grocerybag.png',
              ),
            ),
          ),
          const Text(
            'Grocery',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'RM 6.19',
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'RM 6.19',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          Center(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF396241),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size(350, 60), // Width 200 and height 60
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
