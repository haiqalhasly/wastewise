// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:wastewise/components/textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Groceries",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),

      //body
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/Shop.png'), fit: BoxFit.cover)),
        child: Center(
          child: Textfield(
              controller: searchcontroller,
              hintText: 'search here',
              obscureText: false),
        ),
      ),
    );
  }
}
