import 'dart:async';

import 'package:flutter/material.dart';
import 'package:unicare5/HomeScreen.dart';

import 'Boarding-1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


/////////////////////////////////////////////////
// Implementation is not done until after learning to animation by Flutter
/////////////////////////////////////////////////
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds:3),
            ()=>Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context)=>Onbording())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Colors.blue,
              Colors.blue]
        ),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/heart (14).png',
              height: 400.0,
              width: 400.0,
            ),
            Text(
                "UNICARE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize:30,
                fontFamily: 'CinzelDecorative',
              ),
            ),
            CircularProgressIndicator(color: Colors.white,)
          ],
        ),

      ),
    );
  }
}
