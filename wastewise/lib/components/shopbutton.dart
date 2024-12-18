import 'package:flutter/material.dart';


class ShopButton extends StatelessWidget {
  final String imagePath;
  final String shopName;
  final String opsHours;
  final String deliveryFee;
  final String distance;

  const ShopButton(
      {super.key,
      required this.imagePath,
      required this.shopName,
      required this.opsHours,
      required this.deliveryFee,
      required this.distance});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 25, right: 8),
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
                      Text(distance),
                      SizedBox(
                        width: 20,
                      ),
                      Text(opsHours)
                    ],
                  ),
                  Text(deliveryFee)
                ],
              ),
            )
          ])),
    );
  }
}
