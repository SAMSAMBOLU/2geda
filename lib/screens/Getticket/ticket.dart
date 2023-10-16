// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class Ticket extends StatelessWidget {

   const Ticket({
    super.key,
   
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 229,
        // width: 208,
         child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GetTicket(
              eventTitle: 'Meta app unveil',date: 'Thur,17 Aug, 2023- Eko Hotel...',image:"assets/images/liveEvent.png",button: 'Get ticket',
            ),
            SizedBox(width: 10,),
            GetTicket(
              eventTitle: 'Meta app unveil',date: 'Thur,17 Aug, 2023- Eko Hotel...',image:"assets/images/liveEvent.png",button: 'Get ticket',
            ),  
            SizedBox(width: 10,),
             GetTicket(
              eventTitle: 'Meta app unveil',date: 'Thur,17 Aug, 2023- Eko Hotel...',image:"assets/images/liveEvent.png",button: 'Get ticket',
            ),   
            SizedBox(width: 10,), 
            GetTicket(
              eventTitle: 'Meta app unveil',date: 'Thur,17 Aug, 2023- Eko Hotel...',image:"assets/images/liveEvent.png",button: 'Get ticket',
            ),  
            SizedBox(width: 10,),
            GetTicket(
              eventTitle: 'Meta app unveil',date: 'Thur,17 Aug, 2023- Eko Hotel...',image:"assets/images/liveEvent.png",button: 'Get ticket',
            ),
            ]
            ),
       );
  }
}





class GetTicket extends StatelessWidget {

  final String eventTitle;
  final String date;
  final String button;
  final String image;


   const GetTicket({
    super.key, 
    required this.eventTitle,
    required this.button,
    required this.date,
    required this.image
    
    
    
    
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  width: 208.0,
  height: 229.0,
  child: Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            // Image at the top
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              child: Image.asset(
                '$image', // Replace with your image URL
                width: double.infinity,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            // "Live Event" badge
            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            //   decoration: BoxDecoration(
            //     color: Colors.purple,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(10.0),
            //       bottomRight: Radius.circular(10.0),
            //     ),
            //   ),
            //   child: Text(
            //     'Live Event',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 12.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // Logo at the top right
            Positioned(
              top: 8.0,
              right: 8.0,
              child: Image.asset(
                'assets/images/NEW white-1 1.png', // Replace with your logo URL
                width: 30.0,
                height: 30.0,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              // Header
              Text(
                eventTitle,
                style:GoogleFonts.ubuntu(textStyle:TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),)
              ),
              SizedBox(height: 4.0),
              // Date and Location
              Text(
                date,
                style:GoogleFonts.ubuntu(textStyle:TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),)
              ),
            ],
          ),
        ),
        // Button with purple background
        Center(
          child: SizedBox(
            width: 100,
            height: 40,
            // margin: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4F0DA3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                '$button',
                style: GoogleFonts.ubuntu(textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),)
              ),
            ),
          ),
        ),
      ],
    ),
  ),
)
;
  }
}