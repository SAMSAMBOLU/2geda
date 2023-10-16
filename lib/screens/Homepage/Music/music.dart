// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          MyMusic(musicTitle: "When we fall asleep", image: "assets/images/BillieEisllish.png", artiste: "Billie Eillish"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "I told them", image: "assets/images/Burna.png", artiste: "Burna Boy"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "When we fall asleep", image: "assets/images/BillieEisllish.png", artiste: "Billie Eillish"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "I told them", image: "assets/images/Burna.png", artiste: "Burna Boy"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "When we fall asleep", image: "assets/images/BillieEisllish.png", artiste: "Billie Eillish"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "I told them", image: "assets/images/Burna.png", artiste: "Burna Boy"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "When we fall asleep", image: "assets/images/BillieEisllish.png", artiste: "Billie Eillish"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "I told them", image: "assets/images/Burna.png", artiste: "Burna Boy"),
          SizedBox(width: 10,),
          MyMusic(musicTitle: "When we fall asleep", image: "assets/images/BillieEisllish.png", artiste: "Billie Eillish")
    
        ],
      ),
    );
  }
}





class MyMusic extends StatelessWidget {

  final String musicTitle;
  final String image;
  final String artiste;

  const MyMusic(
    {super.key, 
    required this.musicTitle, 
    required this.image,
     required this.artiste});

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: <Widget>[
            // Image
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                image,
                width: 168.0, 
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),

            // Header Text
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                musicTitle,
                style: GoogleFonts.ubuntu(textStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),)
              ),
            ),

            // Another Text Below Header Text
            Text(
              artiste,
              style: GoogleFonts.ubuntu(textStyle: TextStyle(
                fontSize: 12.0,fontWeight: FontWeight.w400,
                color: Color(0xFF403F3F),
              ),)
            ),
          ],
        );
  }
}
