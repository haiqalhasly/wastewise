// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wastewise/components/allbutton.dart';
import 'package:wastewise/components/drawer.dart';
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
        iconTheme: IconThemeData(color: Colors.white),
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
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.heart,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      drawer: MyDrawer(),

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
                child: MyTextfield(
                    controller: searchcontroller,
                    hintText: 'Search here',
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
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align items to the top
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Buy Expire or Buy Higher',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                            overflow: TextOverflow.visible, // Handle overflow
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset(
                            'lib/assets/squirrelnoBG.png',
                            height: 85, // Adjust height to prevent overflow
                          ),
                        ),
                      ),
                    ],
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
                  //Cu MArt
                  ShopButton(
                      imagePath: 'lib/assets/cu_mart.jpg',
                      shopName: 'CU MART',
                      opsHours: '12PM - 12AM',
                      itemsLeft: '10 ITEMS LEFT',
                      distance: '2.0KM'),

                  //Emart
                  ShopButton(
                      imagePath: 'lib/assets/e-mart.jpg',
                      shopName: 'E-MART',
                      opsHours: '12PM - 12AM',
                      itemsLeft: '5 ITEMS LEFT',
                      distance: '2.1KM'),

                  //MyNews
                  ShopButton(
                      imagePath: 'lib/assets/mynews.jpg',
                      shopName: 'MYNEWS',
                      opsHours: '12AM - 10PM',
                      itemsLeft: '7 ITEMS LEFT',
                      distance: '1.5 KM'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
