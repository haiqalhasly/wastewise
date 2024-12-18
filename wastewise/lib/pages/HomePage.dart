// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastewise/components/allbutton.dart';
import 'package:wastewise/components/shopbutton.dart';
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
        title: Center(
          child: Text(
            "Groceries",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),

      //body
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/Shop.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          // Wrap the Column with SingleChildScrollView
          child: Column(
            children: [
              SizedBox(height: 120),
              Center(
                child: Textfield(
                    controller: searchcontroller,
                    hintText: 'search here',
                    obscureText: false),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Container(
                  height: 90,
                  width: double.infinity, // Use double.infinity for full width
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40, left: 20),
                    child: Text(
                      'Never miss a green sticker',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AllButton(text: 'All Categories', color: Colors.black),
                  SizedBox(
                    width: 50,
                  ),
                  AllButton(text: 'All Dietary', color: Colors.white)
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  for (int i = 0; i < 3; i++)
                    ShopButton(
                        imagePath: 'lib/assets/cumart.jpg',
                        shopName: 'CU MART',
                        opsHours: '12PM - 12AM',
                        deliveryFee: 'RM 2.90',
                        distance: '2KM'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
