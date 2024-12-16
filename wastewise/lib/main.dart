// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wastewise/pages/login_page.dart';
import 'pages/getstart.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waste Wise',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Color(0xFF9da993),
          fontFamily: 'Ubuntu'),
      debugShowCheckedModeBanner: false,
      home: Getstart(),
      routes: {
        '/getstartedpage': (context) => Getstart(),
        '/LoginPage': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
