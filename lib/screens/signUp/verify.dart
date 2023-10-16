// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:project/screens/Homepage/buttonsections.dart';

class verifyMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Email Verification',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: VerificationScreen(),
    );
  }
}

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController _codeController = TextEditingController();
  int _resendTimer = 60; // Initial timer value in seconds
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  // Function to start the resend timer
  void _startResendTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_resendTimer > 0) {
          _resendTimer--;
        } else {
          _timer.cancel(); // Stop the timer when it reaches 0
        }
      });
    });
  }

  // Function to resend the verification code
  void _resendCode() {
    // Add logic to resend the verification code here

    // Reset the timer
    setState(() {
      _resendTimer = 60;
    });
    _startResendTimer();
  }

  //Alert Error

  void _verifyCode() {
    String verificationCode = '';
    for (int i = 0; i < 5; i++) {
      verificationCode += _codeController.text[i];
    }

    if (verificationCode.isEmpty) {
      // Text fields are empty, throw an error
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Verification Error'),
            content: Text('Please enter the verification code.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HeadNavBar()),
      );
    }
  }

  @override
  void dispose() {
    _codeController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          Image(
            height: 77,
            width: 77,
            image: AssetImage("assets/images/2geda.png"),
          )
        ],
        backgroundColor: Color.fromARGB(255, 248, 246, 246).withOpacity(0.75),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Please Verify your email',
                    style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, ),),
                    textAlign: TextAlign.center,
                  ),
                  Text("we sent you 5 digits to your email", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) =>
                   Container(
                    width: 55,
                    height: 53,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(1),
                      color: _codeController.text.length >5
                          ? Color(0xFF4F0DA3)
                          : Colors.transparent, // Set purple background when a number is entered
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _codeController.text.isNotEmpty && _codeController.text.length > 0
                  ? Color(0xFF4F0DA3) 
                  : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),),
                        // textInputAction: ,
                        controller: _codeController,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          
                          counterText: "",
                          border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid)), // Remove the border
                        ),
                        onChanged: (value) {
                          // Handle code input
                          if (value.length == 1) {
                            // Move to the next input field
                            if (index < 4) {
                              FocusScope.of(context).nextFocus();
                            } else {
                              // Last input field, perform verification
                              String verificationCode = "";
                              // for (int i = 0; i < 5; i++) {
                              //   verificationCode += _codeController.text[i];
                              // }
                              // Add verification logic here
                              print('Verification Code: $verificationCode');
                            }
                          }
                        },
                      ),
                    ),
                  ),






                  
                ),
              ),
              SizedBox(height: 60),
              Text(
                ' $_resendTimer:00',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              InkWell(
                child: Text(
                  "Did not get code? Click here to resend",
                  style: TextStyle(color: Color(0xFF4F0DA3) ),
                ),
                onTap: () {
                  _resendTimer > 0 ? null : _resendCode;
                },
              ),
              SizedBox(
                height: 300,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HeadNavBar()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF4F0DA3)),
                  child: Center(
                      child: Text(
                    "Verify",
                    style:GoogleFonts.ubuntu(textStyle:  TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 17),
                  ))),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}


