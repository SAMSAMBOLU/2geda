
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, unnecessary_string_interpolations, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/Homepage/comment/salem.dart';


class SocialMediaPostCard3 extends StatelessWidget {
  final String text;
  final String name;
  final String image1;
  final String image2;
  final String bio;
  final String time;
  final String like;
  final String comment;
  final String share;
  final String PurpleText1;
  final String PurpleText2;
  // final String PurpleText3;

  SocialMediaPostCard3({
    required this.name,
    required this.text,
    required this.image1,
    required this.image2,
    required this.bio,
    required this.time,
    required this.like,
    required this.comment,
    required this.share,
    required this.PurpleText1,
    required this.PurpleText2,
    // required this.PurpleText3
  });




  @override
  Widget build(BuildContext context) {
    return 
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => postSalem(),));
        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // height: MediaQuery.of(context).size.height*0.1,

              decoration: BoxDecoration(
                color: Color(0xFF4F0DA3),
                borderRadius: BorderRadius.only(
                  topRight:Radius.circular(18),
                  topLeft: Radius.circular(18)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$PurpleText1", style:GoogleFonts.ubuntu(textStyle:  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),)),
                    Text("$PurpleText2", style:GoogleFonts.ubuntu(textStyle:  TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),))
                  ],
                ),
              ),
            ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
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
                                  style: GoogleFonts.ubuntu(textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,color: Color(0xFF4F0DA3),
                                    fontSize: 18.0,
                                  ),)
                                ),
                                SizedBox(width: 1.0),
                                Image.asset("assets/images/CircleWavyCheck.png", width: 14.5,height: 14.5,)
                              ],
                            ),
                            Text(bio,style: GoogleFonts.ubuntu(
                             textStyle: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.w400,
                             color: Color.fromARGB(255, 148, 140, 140),
                        )))
                          ],
                        )
                        ,
                          ],
                        ),
                        Text(time, style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),)
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:16.0, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('$text',
                    style: GoogleFonts.ubuntu(
                       textStyle: TextStyle(
                        height: 1.5,
                       fontSize: 13,fontWeight: FontWeight.w400,
                       color: Color.fromARGB(255, 148, 140, 140),
                        )) ),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5),
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
                        SizedBox(width: 15,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.mode_comment_outlined),
                            SizedBox(width: 4.0),
                            Text(comment),
                          ],
                        ), 
                         SizedBox(width: 15,),
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


