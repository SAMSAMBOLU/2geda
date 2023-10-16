// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
class alsoView extends StatelessWidget {
   final String title;
  final String review;
  final String image1;
  final String price;
  final String starRating;
  
 alsoView({
    required this.title,
    required this.image1,
    required this.review,
    // required this.timePosted,
    required this.starRating,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width:170,
      height: 206,
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
      ),
        // elevation: 4,
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Start text from the left
          children: [
            ClipRRect(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                '$image1', // Replace with your image asset
                height: 100, // Adjust the image height as needed
                width: double.infinity, // Make the image span the entire width of the card
                fit: BoxFit.cover, // Remove blur effect
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:12.0),
              child: Text(
                '$title',
                style: GoogleFonts.ubuntu(textStyle:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),)
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:11.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,size: 12,
                    color: Color(0xFFFF8A15),
                  ),
                  
                  SizedBox(width: 4, ),
                  Text(
                    '$starRating',
                    style:GoogleFonts.ubuntu(textStyle:
                      TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),)
                  ),
                  SizedBox(width: 3),
                  Text(
                    ' $review',
                    style:GoogleFonts.ubuntu(textStyle:  TextStyle(
                      color: Colors.grey,
                      fontSize: 8, fontWeight: FontWeight.w400
                    ),)
                  ),
                ],
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Text(
               '\u20A6 $price,',
                style:  TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
