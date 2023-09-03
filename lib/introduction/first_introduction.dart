import 'dart:async';

import 'package:doctor_hunt/introduction/second_introduction.dart';
import 'package:flutter/material.dart';

class FirstIntroduction extends StatefulWidget {
  const FirstIntroduction({Key? key}) : super(key: key);

  @override
  State<FirstIntroduction> createState() => _FirstIntroductionState();
}

class _FirstIntroductionState extends State<FirstIntroduction> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondIntroduction()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueAccent.withOpacity(0.4),
              Colors.white.withOpacity(0.3),
              Colors.grey.withOpacity(0.3),
              Colors.greenAccent.withOpacity(0.7)
            ]
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                //image: DecorationImage(image: AssetImage("images/logo.png")),
                color: Colors.pink
              ),
            ),

            SizedBox(height: 10,),

            Text("Doctor Hunt",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
