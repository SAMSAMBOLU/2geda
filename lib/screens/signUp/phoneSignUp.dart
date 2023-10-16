// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:togeda/screens/signUp/signUp.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:project/screens/Homepage/buttonsections.dart';
import 'package:project/screens/signUp/register.dart';
// import 'package:projects/screens/';

class phoneNumber extends StatefulWidget {
  // var _formKey;

   phoneNumber({super.key});

  @override
  State<phoneNumber> createState() => _phoneNumberState();
}

class _phoneNumberState extends State<phoneNumber> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _phoneNumberController = TextEditingController();

  PhoneNumber? _phoneNumber;
 bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image(
           height: 77,
           width: 77,
            image: AssetImage("assets/images/2geda.png"))
        ],
        backgroundColor:  Color.fromARGB(255, 248, 246, 246).withOpacity(0.75)
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text("Sign up Phone number", style:GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 17))
                     ,),
                    SizedBox(height: 20,),Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Text(
                    //   // 'Phone Number',
                    //   style: 
                    //   TextStyle(fontSize: 18.0),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1.0)
                      ),
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber phoneNumber) {
                          _phoneNumber = phoneNumber;
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG,
                        ),
                        hintText: 'Enter your phone number',
                        initialValue: _phoneNumber,
                      ),
                    ),
        
        
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.grey, // Border color
                    //       width: 1.0,),
                    //       borderRadius: BorderRadius.circular(8.0),),
                    //       child: TextField(
                    //         decoration: InputDecoration(
                    //           hintText: "Input email address"
                    //         ),
                    //         obscureText: false,
                    //       ),
                    //       ),
                    SizedBox(height: 10,),
                          Text("we'll verify the email provided to be sure it belongs to you", style: GoogleFonts.ubuntu(textStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.w300,fontSize: 14 ),)),
                          SizedBox(height: 30,),
                          //USE PHONE NUMBER INSTEAD//
                           SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => register(),));
                            },
                            child: Text("Use Email instead", style: GoogleFonts.ubuntu(textStyle: TextStyle(color:Color(0xFF4F0DA3),fontWeight: FontWeight.w500,fontSize: 13 ),))),
                            SizedBox(height: 10,),
                          Container(
                      decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Colors.grey, // Border color
                        //   width: 1.0,),
                          borderRadius: BorderRadius.circular(8.0),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: "Username", hintStyle:GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)) ,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  ),
                            ),
                            ),
                          ),
                          ),
                          //
                          SizedBox(height: 10,),
                          // Password// 
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                                  ),
                              prefixIcon: InkWell(
                                onTap: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                                },
                                child: Icon( _isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                                )
                                
                                ),
                              hintText: "Create password",hintStyle:GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)) 
                              // hintStyle: TextStyle(color:Color(0xFF4F0DA3),fontWeight: FontWeight.bold )
                              
                          ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Already have an account?", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),),
                              Text("Sign in", style: TextStyle(color:Color(0xFF4F0DA3) , fontWeight: FontWeight.bold),)
                            ],
                          )
                          ],
                          ),
                          ), 
                          SizedBox(height: 100,),
                          InkWell(onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => HeadNavBar(),));
                          },
                            child: Container(
                              height:MediaQuery.of(context).size.height*0.08,
                              width: MediaQuery.of(context).size.width*0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFF4F0DA3)
                              ),
                              child: Center(child: Text("Continue", style: TextStyle(color: Colors.white),)),
                            ),
                          )
                          ]
                          ),
              ),
            ],
        ),
      )
    );
  }
}