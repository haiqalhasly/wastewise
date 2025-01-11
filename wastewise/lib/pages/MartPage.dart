// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wastewise/components/descriptionbox.dart';
import 'package:wastewise/components/drawer.dart';
import 'package:wastewise/components/items.dart';
import 'package:wastewise/components/my_current_location.dart';

class MartPage extends StatelessWidget {
  const MartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            "Items Left (10)",
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.heart,
                size: 30,
              ))
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: const [
          Divider(
            color: Colors.grey,
            indent: 25,
            endIndent: 25,
          ),
          MyCurrentLocation(),
          Descriptionbox(),
          Items(),
          Items(),
          Items(),
          Items(),
          Items(),
        ],
      ),
    );
  }
}
