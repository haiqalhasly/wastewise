// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastewise/components/wastewisetext.dart';

class Getstart extends StatelessWidget {
  const Getstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Background Color
      body: Container(
        //Add gradient
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xFF9da993), //start color
              Color(0xFF396241), //end color
            ],
                //gradient top to bottom
                begin: AlignmentDirectional.centerStart,
                end: Alignment.bottomCenter)),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/wastewise_logo.png",
                width: 80,
                height: 80,
              ),
              Wastewisetext(),
              Image.asset(
                "lib/assets/grocerybag.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 50),
              Text(
                "Instant updates on nearby discounted delicious food. ",
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LoginPage');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(350, 60), // Width 200 and height 60
                    padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15), // Padding inside the button
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
