// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastewise/components/logobutton.dart';
import 'package:wastewise/components/signbutton.dart';
import 'package:wastewise/components/textfield.dart';

import '../components/wastewisetext.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//text editing controller

  final addresscontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            //Add gradient
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color(0xFF9da993), //start color
                  Color(0xFF396241), //end color
                ],
                    //gradient top to bottom
                    begin: AlignmentDirectional.centerStart,
                    end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //sign in text
                  SizedBox(height: 80),
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //lock icon
                  const Icon(
                    Icons.lock,
                    size: 100,
                    color: Color(0xFF396241),
                  ),

                  //email address
                  const Padding(
                    padding: EdgeInsets.only(right: 310),
                    child: Text("Email"),
                  ),
                  SizedBox(height: 5),
                  Textfield(
                    controller: addresscontroller,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  //password
                  const Padding(
                    padding: EdgeInsets.only(right: 280),
                    child: Text("Password"),
                  ),
                  SizedBox(height: 5),
                  Textfield(
                    controller: passwordcontroller,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  SizedBox(height: 20),

                  //sign in button

                  SignInButton(),
                  SizedBox(height: 10),

                  //forgot password

                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 20),
                  //or continue with
                  Text("or continue with"),
                  SizedBox(height: 10),

                  // google and facebook logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Logobutton(imagePath: 'lib/assets/google.png'),
                      SizedBox(width: 20),
                      Logobutton(
                          imagePath: 'lib/assets/Facebook_Logo_Primary.png'),
                    ],
                  ),
                  SizedBox(height: 20),

                  //waste wise text

                  Wastewisetext(),
                ],
              ),
            )));
  }
}
