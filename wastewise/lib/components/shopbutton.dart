// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopButton extends StatelessWidget {
  final String imagePath;
  final String shopName;
  final String opsHours;
  final String itemsLeft;
  final String distance;

  const ShopButton(
      {super.key,
      required this.imagePath,
      required this.shopName,
      required this.opsHours,
      required this.itemsLeft,
      required this.distance});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/MartPage');
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
            elevation: 100.0,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    imagePath,
                    width: 320,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 25, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shopName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.mapPin,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(distance),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.clock,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 5),
                        Text(opsHours)
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(right: 50, left: 50),
                        decoration: BoxDecoration(
                            color: Color(0xFF9da993),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          itemsLeft,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
