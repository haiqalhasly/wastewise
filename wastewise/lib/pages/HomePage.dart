// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:wastewise/components/textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9da993),
      //appbar

      appBar: AppBar(
        backgroundColor: Color(0xFF9da993),
        title: Center(
            child: Text(
          "Groceries",
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person,
              size: 45,
              color: Colors.white,
            ),
          )
        ],
      ),
      //body

      body: Row(
        children: [
          Textfield(
            controller: searchcontroller,
            hintText: "Search here",
            obscureText: false,
          ),
          // Icon(
          //   Icons.tune,
          //   size: 40,
          // ),
        ],
      ),
    );
  }
}
