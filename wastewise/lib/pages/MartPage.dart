import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wastewise/components/drawer.dart';
import 'package:wastewise/components/my_current_location.dart';

class MartPage extends StatelessWidget {
  const MartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "Items Left (10)",
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.heart,
                size: 30,
              ))
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
            indent: 25,
            endIndent: 25,
          ),
          MyCurrentLocation()
        ],
      ),
    );
  }
}
