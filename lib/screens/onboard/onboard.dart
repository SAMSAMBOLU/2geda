 // ignore_for_file: unused_field, prefer_const_constructors

 import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/signUp/register.dart';




class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set to transparent to remove the color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
   late Timer _timer;
  // late AnimationController _animationController;
  // late Animation<double> _animation;
  int _currentPage = 0;

  final List<OnboardingData> _onboardingData = [
    OnboardingData(
      header: 'Unlock Business\nand Personal\nPotentials',
      content: 'Meet prospective clients and\nvendors for your next product or \nservice needs',
    ),
    OnboardingData(
    
      header: 'Connect with \nDiverse\nBusinesses',
      content: 'Boost local businesses on our app.\n Connect, engage, and grow \n together socially',
    ),
    OnboardingData(
      header: 'Explore Our \nInclusive Business \nDirectory',
      content: 'Discover a diverse array of \nbusinesses in our\ninclusive directory  today. ',
    ),
  ];
  // late Timer _timer;
  
  // var _animationController;

  @override
  void initState() {
    super.initState();
    // Automatically switch screens every 3 seconds
    _startAutoPageSwitch();
  }

  // Function to automatically switch screens
   void _startAutoPageSwitch() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 2) {
        _pageController.animateToPage(
          _currentPage + 1,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      } else {
        // If we're on the last screen, loop back to the first screen and start the animation
        // _animationController.reset();
        // _animationController.forward();
        _pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
    // _timer.cancel();
    // _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0,),
              child: Image.asset("assets/images/2geda.png", height: 70,width: 70,),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemCount: _onboardingData.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    data: _onboardingData[index],
                  );
                },
              ),
            ),
            _buildSliderBar(),
            SizedBox(height: 80,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:15.0),
                child: Container(
                  height:58,
                  width:321,
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => register(),)
                    ); },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4F0DA3), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Circular shape
                        ),
                        ),
                        child: Text('Open an account',
                        style: GoogleFonts.ubuntu(textStyle: TextStyle(
                          fontFamily: 'ubuntu',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),)),
                        ),
                ),
              ),
              SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:15.0),
               child: Container(
                height:58,
                width: 321,
                 child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => register(),)
                    ); },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Circular shape
                        ),
                        ),
                        child: Text('Sign In', 
                        style: GoogleFonts.ubuntu(textStyle: TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                           fontFamily: 'Ubuntu')),),
                        ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(28.0),
               child: Column(
                children: [
                  RichText(text: 
                     TextSpan(
                      text: 'By Continuing to use this platform, you agree to the ',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                        fontSize: 11.5),
                       children: <TextSpan>[
                        TextSpan(
                        text: 'Terms & Conditions',
                        style:GoogleFonts.ubuntu(textStyle:  TextStyle(
                          fontSize: 11.5, fontWeight: FontWeight.w500,
                        color: Color(0xFF4F0DA3), // Link color
                        decoration: TextDecoration.underline,
                        ),),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add logic to navigate to the Terms & Conditions page
                          print('Navigate to Terms & Conditions',);
                          },
                             ),
                             TextSpan(text: ' and the ', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w500))),
                             TextSpan(
                      text: 'Privacy Policy',
                      style: GoogleFonts.ubuntu(textStyle: TextStyle(
                        fontSize: 11.5,fontWeight: FontWeight.w500,
                        color: Color(0xFF4F0DA3), // Link color
                        decoration: TextDecoration.underline,
                      ),),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add logic to navigate to the Privacy Policy page
                          print('Navigate to Privacy Policy');
                        },
                             ),
                             TextSpan(text: ' of 2geda.',style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w500))),
                           ],
                         ),
                              
                     ),
                   ],
                 ),
             ),
              ],
             ),
      ),

          // 
        );
    
  }

  Widget _buildSliderBar() {
    return Align(alignment: Alignment.center,
        child: Container(
          // color: Colors.black,
          width: 45,
          height: 4.0,
          // width: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _onboardingData.length,
              (index) {
                return RotationTransition(turns: AlwaysStoppedAnimation(_currentPage == _onboardingData.length - 1 ? 0.5 : 0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.only(right: 4),
                    width:  _currentPage == index ? 25:4,
                    height: 4,
                    // margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      // shape: _currentPage == index ? BoxShape.rectangle :BoxShape.circle,
                      // shape: BoxShape.circle,
                      color: _currentPage == index ? Color(0xFF4F0DA3) : Color.fromARGB(255, 144, 101, 201),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      
    );
  }
}

class OnboardingData {
  // final String image;
  final String header;
  final String content;

  OnboardingData({
    // required this.image,
     required this.header, 
     required this.content});
}

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  OnboardingPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          // Image.asset(
          //   data.image,
          //   width: 77.0,
          //   height: 77.0,
          // ),
          SizedBox(height: 20.0),
          Text(
            data.header,
            style: GoogleFonts.ubuntu(
              textStyle:GoogleFonts.ubuntu(textStyle: TextStyle(
              fontFamily:'Ubuntu',
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),)
            )
            
            
          ),
          SizedBox(height: 20.0),
          Text(
            data.content,
            style: GoogleFonts.ubuntu(
              textStyle:GoogleFonts.ubuntu(textStyle: TextStyle(
              fontFamily:'Ubuntu',
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(0, 0, 0, 0.7),
            ),)
            )
            
            // textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
