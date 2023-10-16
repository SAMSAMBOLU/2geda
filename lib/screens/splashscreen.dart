

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/onboard/onboard.dart';

class Newsplashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set to transparent to remove the color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  // Simulate loading progress
  void _startLoading() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _progressValue = 0.2;
      });
    });

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _progressValue = 0.4;
      });
    });

    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _progressValue = 0.6;
      });
    });

    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        _progressValue = 0.8;
      });
    });

    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        _progressValue = 1.0;
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Onboarding(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4F0DA3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/NEW white-1 1.png', // Replace with your logo image path
              width: 170.0,
              height: 170.0,
            ),
            // SizedBox(height: 0.0),
            Text(
              'The Platform we build together',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 15.0,
              ),
              )
            ),
            SizedBox(height: 100.0),
            Container(
              width: 200.0,
              height: 16.0,
              decoration: BoxDecoration(
                color: Colors.transparent, // Background color of the progress bar
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.white, // White border color
                  width: 2.0,
                ),
              ),
              child: LinearProgressIndicator(
                value: _progressValue,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            SizedBox(height: 10.0),
            Text('Loading...',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Colors.white,
              ),
              )
              
            ),
          ],
        ),
      ),
    );
  }
}

