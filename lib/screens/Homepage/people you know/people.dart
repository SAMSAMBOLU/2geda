// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class PeopleCardWidget extends StatelessWidget {
  final String profileImage;
  final String name;
  final String bio;
  final String bio2;

  const PeopleCardWidget({super.key, 
    required this.profileImage,
    required this.name,
    required this.bio,
    required this.bio2
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(profileImage),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.ubuntu(textStyle: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w400
                  ),)
                ),
                SizedBox(height: 4),
                Text(
                  ' $bio',
                  style: GoogleFonts.ubuntu(textStyle: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 148, 140, 140)
                  ),)
                ),
                Text(
                  ' $bio2',
                  style: GoogleFonts.ubuntu(textStyle: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 148, 140, 140)
                  ),)
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add your action when the "Stick" button is pressed.
              },
               style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF4F0DA3) ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                ),
              ),
            ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Text('Stick'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}