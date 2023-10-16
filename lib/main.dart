// ignore_for_file: prefer_const_constructors, unused_import

// import 'package:Togeda/screens/Homepage/allpost.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/Getticket/ticket.dart';
import 'package:project/screens/Homepage/AlsoView/alsoview.dart';
import 'package:project/screens/Homepage/BusinessAround/BusinessAround.dart';
import 'package:project/screens/Homepage/Music/music.dart';
import 'package:project/screens/Homepage/allpost.dart';
import 'package:project/screens/Homepage/buttonsections.dart';
// import 'package:project/screens/Homepage/header.dart';
import 'package:project/screens/Homepage/post.dart';
import 'package:project/screens/Homepage/productcard/newVerifiedPurple.dart.dart';
import 'package:project/screens/Homepage/productcard/product.dart';
import 'package:project/screens/onboard/onboard.dart';
import 'package:project/screens/signUp/register.dart';
import 'package:project/screens/signUp/verify.dart';
import 'package:project/screens/splashscreen.dart';
// import 'package:project/screens/Homepage/profilepic.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project/screens/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set to transparent to remove the color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:  GoogleFonts.ubuntuTextTheme(),
        // fontFamily:,
        colorScheme: ColorScheme.fromSeed(seedColor:Color(0xFF4F0DA3), ),
        useMaterial3: true,
      ),
      home:
      
      // AllPostsScreen()
      // headnavBar(),
      // alsoview(),
      // newCard(),
      // products(),
      // MyWidget(),
      // header(),
      // HomeScreenNav()
      // header(),
      // SocialMediaPostCard(),
      // ButtonList(),
      // header(),
      // Onboarding()
      Newsplashscreen(),
      // Ticket(),
      // allPost()
      // MyMusic(),
      // bizz(),
    );
  }
}

