// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/signUp/phoneSignUp.dart';
import 'package:project/screens/signUp/verify.dart';
// import 'package:togeda/screens/signUp/Phonesignup.dart';
// import 'package:togeda/screens/signUp/verifyMail.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:() => Navigator.pop(context), icon: Icon(Icons.arrow_back, color: Colors.black,)),
        actions: [
          Image(
            height: 77,
            width: 77,
            image: AssetImage("assets/images/2geda.png"))
        ],
        backgroundColor: Color.fromARGB(255, 248, 246, 246).withOpacity(0.75)
        //  Color.fromARGB(255, 234, 234, 238),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Container(margin: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Sign up with email", style: GoogleFonts.ubuntu(textStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.w500, fontSize: 17,),),)),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10.0), // Rounded corners
                         ),
                      hintText: "Input email address", hintStyle: TextStyle(fontSize: 12)
                    ),
                    obscureText: false,
                  ),
                          SizedBox(height: 10,),
                          Container(margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("We'll verify the email provided to be sure it belongs to you", style: GoogleFonts.ubuntu(),)),
                          SizedBox(height: 30,),
                          //USE PHONE NUMBER INSTEAD//
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => phoneNumber(),));
                            },
                            child: Container(margin: EdgeInsets.symmetric(horizontal: 12),
                              child: Text("Use phone number instead", style: GoogleFonts.ubuntu(textStyle: TextStyle(color:Color(0xFF4F0DA3),fontWeight: FontWeight.w500, fontSize: 15 ),)))),
                              SizedBox(height: 10,),
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                                ),
                              hintText: "Username", hintStyle: TextStyle(fontSize: 12)
                              
                          ),
                          ),
                          SizedBox(height: 15,),
                          
                          // SizedBox(height: 15,),
                          // Password// 
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye,size: 20,),
                              border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10.0), // Rounded corners
                             ),
                              // prefixIcon: Icon(Icons.remove_red_eye),
                              hintText: "Create password",hintStyle: TextStyle(fontSize: 12)
                              // hintStyle: TextStyle(color:Color(0xFF4F0DA3),fontWeight: FontWeight.bold )
                              
                          ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Already have an account?", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),),
                              SizedBox(width: 5,),
                              Text("Sign in", style:GoogleFonts.ubuntu(textStyle: TextStyle(color:Color(0xFF4F0DA3) , fontWeight: FontWeight.w500,fontSize:12 ),) )
                            ],
                          ),
                          SizedBox(height: 100,),
                          Center(
                            child: Container(
                              height:MediaQuery.of(context).size.height*0.08,
                              width: MediaQuery.of(context).size.width*0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF4F0DA3)
                              ),
                              child: InkWell(
                                onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen(),));
                                },
                                child: Center(child: Text("Continue", style:GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w300, color: Colors.white))
                                 ,))),
                            ),
                          )
                          ],
                          ),
                          ),
                        ],
        ),
      ),
                    );
  }
}