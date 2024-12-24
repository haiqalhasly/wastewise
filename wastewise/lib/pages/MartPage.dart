import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wastewise/components/drawer.dart';

class MartPage extends StatelessWidget {
  const MartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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

      
    );
  }
}
