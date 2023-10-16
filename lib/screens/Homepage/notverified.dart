// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/Homepage/comment/johndoe.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Social Media Post Card',
//       home: SocialMediaPostCard(),
//     );
//   }
// }

class SocialMediaPostCard2 extends StatelessWidget {
  final String text;
  final String name;
  final String image1;
  final String image2;
  final String bio;
  final String time;
  final String like;
  final String comment;
  final String share;

  const SocialMediaPostCard2({
    required this.name,
    required this.text,
    required this.image1,
    required this.image2,
    required this.bio,
    required this.time,
    required this.like,
    required this.comment,
    required this.share
  });




  @override
  Widget build(BuildContext context) {
    return 
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => johnDoe(),));
        },
        child: Card(
          // margin: EdgeInsets.all(16.0),
          // elevation: 4.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('$image1'),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '$name',
                              style: GoogleFonts.ubuntu(textStyle:TextStyle(color: Color(0xFF4F0DA3),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ), )
                            ),
                            SizedBox(width: 8.0),
                           
                          ],
                        ),
                        Text(bio,
                         style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 148, 140, 140),
                        )),)
                      ],
                    )
                    ,
                      ],
                    ),
                    Text(time, 
                     style:  GoogleFonts.ubuntu(textStyle: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w400,
                       color: Color.fromARGB(255, 148, 140, 140),
                      ),))
                  ],
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:16.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('$text', 
                    style: GoogleFonts.ubuntu(textStyle:TextStyle(
                     fontWeight: FontWeight.w500,height: 1.5,
                     fontSize: 13.0,),
                     ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    '$image2',
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.7,
                    fit: BoxFit.cover,
                    // height: 200.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Row(
                          children: <Widget>[
                            Icon(Icons.favorite_border),
                            SizedBox(width: 4.0),
                            Text(like),
                          ],
                        ),
                      SizedBox(width: 14,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.mode_comment_outlined),
                            SizedBox(width: 4.0),
                            Text(comment),
                          ],
                        ),
                        SizedBox(width: 14,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.share_outlined),
                            SizedBox(width: 4.0),
                            Text(share)
                          ],
                        ),
                      ],
                    ),
                    Row(
                          children: <Widget>[
                            Icon(Icons.more_horiz),
                            SizedBox(width: 4.0),
                            // Text(share)
                          ],
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}
