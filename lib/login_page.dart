// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size:100,
              ),
          //Hello user
          
          Text('Hello Again!',
            style: GoogleFonts.bebasNeue(
              fontSize: 36,
            ),
          ),

            SizedBox(height:10),
            Text("Welcome back you've been missed",
            style: TextStyle(
            fontSize: 20,
            ),
            ),
            SizedBox(height:60),

          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child:TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:'Email',
                ),
              ),
            ),
          ),
          SizedBox(height:20),

          //password textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child:TextField(
                obscureText:true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:'Password',
                ),
              ),
            ),
          ),
          SizedBox(height:20),

          //sign in button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration:BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child:Center(
              child: Text(
                'Sign In',
                style:TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height:20),

      //Not a member? register now
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not a member?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Register now',
            style:TextStyle(
              color:Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
      ),

        ]),
        ),
      ),
    );
    
  }
}
