import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './home_screen.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 2,
        navigateAfterSeconds: HomeScreen(),
        title: Text(
          'Cat and Dog',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Color(0xFFE99600),
          ),
        ),
        image: Image.asset('assets/.png'),
        backgroundColor: Colors.black,
        loaderColor: Color(0xFFEEDA28),
        photoSize: 50);
  }
}
