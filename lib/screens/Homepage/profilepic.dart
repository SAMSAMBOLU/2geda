import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProfilePicturesApp());
}

class ProfilePicturesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Pictures',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Pictures'),
        ),
        body: ProfileLists(),
      ),
    );
  }
}

class ProfileLists extends StatelessWidget {
  final List<String> names = [
    'Your lifestyle',
    'Christopher',
    'Salaem Lawal',
    'Tolani Bnts',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    'Keni Lahim',
    // 'Frank',
  ];

  final List<String> imagePaths = [
    'assets/images/plus.png',
    'assets/images/friend1.png',
    'assets/images/friend2.png',
    'assets/images/joe biden.png',
    'assets/images/sam.jpeg',
    'assets/images/friend2.png',
    'assets/images/friend1.png',
    'assets/images/joe biden.png',
    'assets/images/mrsam.png',
    'assets/images/sam.jpeg',
    'assets/images/sam.jpeg',
    'assets/images/sam.jpeg',
    'assets/images/sam.jpeg',
    'assets/images/sam.jpeg',
    // 'assets/images/headsetwoman.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          names.length,
          (index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF4F0DA3), // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 25, // Adjust the size as needed
                    backgroundImage: AssetImage(imagePaths[index]), // Use the image path
                  ),
                ),
                SizedBox(height: 8.0),
                Text(names[index], style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF4F0DA3))),),
              ],
            );
          },
        ),
      ),
    );
  }
}
