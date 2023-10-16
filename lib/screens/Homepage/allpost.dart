// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/Getticket/ticket.dart';
import 'package:project/screens/Homepage/AlsoView/alsoview.dart';
import 'package:project/screens/Homepage/BusinessAround/BusinessAround.dart';
import 'package:project/screens/Homepage/Music/music.dart';
import 'package:project/screens/Homepage/menu/menu.dart';
import 'package:project/screens/Homepage/notverified.dart';
import 'package:project/screens/Homepage/people%20you%20know/people.dart';
import 'package:project/screens/Homepage/post.dart';
import 'package:project/screens/Homepage/productcard/Postfour.dart';
import 'package:project/screens/Homepage/productcard/newVerifiedPurple.dart.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project/screens/Homepage/AlsoView/alsoview.dart';
// import 'package:project/screens/Homepage/notverified.dart';
// import 'package:project/screens/Homepage/people%20you%20know/people.dart';
// import 'package:project/screens/Homepage/post.dart';
// import 'package:project/screens/Homepage/productcard/Postfour.dart';
// import 'package:project/screens/Homepage/productcard/newVerifiedPurple.dart.dart';

// import 'package:project/screens/Homepage/productcard/product.dart';
class allPost extends StatelessWidget {
  const allPost({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Text("data"),
      ),
      body: AllPostScreen(),
    ));
  }
}

class AllPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children:  [
         //This is the post card 1//
        SocialMediaPostCard(
          bio: "Developer",
          name: "Salem Lawal",
          text:
              "This is the Opportunity to Join the World Leading Tech\nProfessionals in 2022. All you  need do is to register\nwith the link below......... Read more",
          time: "30secs ago",
          image1: "assets/images/sam.jpeg",
          image2: "assets/images/woman1.png",
          like: "21",
          comment: "2k",
          share: "2",
        ),
        SizedBox( height: 20,),
        Music(),
        SizedBox(height:5,),
        More(),
        // SizedBox(height: 2,),
        //This is the post card 2//
        SocialMediaPostCard2(
          bio: "Product Designer",
          name: "John Doe",
          text:
              "This is the Opportunity to Join the World Leading Tech\nProfessionals in 2022. All you  need do is to register\nwith the link below......... Read more",
          time: "30secs ago",
          image1: "assets/images/Ellipse 17.png",
          image2: "assets/images/woman1.png",
          comment: "2.1k",
          like: "1k",
          share: "1k",
        ),
        SizedBox(
          height: 20,
        ),
        Ticket(),
        SizedBox(
          height: 20,
        ),
        SocialMediaPostCard3(
          name: "Makinde Isaiah",
          text:
              "This is the Opportunity to Join the World Leading Tech\nProfessionals in 2022. All you  need do is to register\nwith the link below......... Read more",
          image1: "assets/images/Ellipse 17.png",
          image2: "assets/images/supermarket.png",
          bio: "Product Manager",
          time: "Yesterday 11:50",
          like: "3.2k",
          comment: "115",
          share: "1.3k",
          PurpleText1: "Joseph Oladepo",
          PurpleText2: "1min ago",
          // PurpleText3: "o",
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 206,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100+ Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100 Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100+ Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100 Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100+ Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100 Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100+ Review",
                  starRating: "4.5",
                  price: "2,35.00"),
              alsoView(
                  title: "Hair Dryer",
                  image1: "assets/images/product1.png",
                  review: "100 Review",
                  starRating: "4.5",
                  price: "2,35.00"),
            ],
          ),
        ),
    
        SocialMediaPostCard4(
          name: "Richard Milp",
          text:
              "This is the Opportunity to Join the World Leading Tech\n Professionals in 2022. All you  need do is to register\nwith the link below......... Read more",
          image1: "assets/images/Ellipse 17.png",
          image2: "assets/images/supermarket.png",
          bio: "Product Manager",
          time: "12/11/2022:12:05",
          like: "3.2k",
          comment: "115",
          share: "1.3k",
          PurpleText1: "Joseph Oladepo ",
          PurpleText2: "1min ago",
          PurpleText3:
              "Wow, this is a rare opportunity, let’s hope tech newbies...",
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: SizedBox(
            child: Stack(
              children: [
                Image(
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage("assets/images/Tomor.png"),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 50.0,
                  left: 150.0, // Adjust the left position as needed
                  child: SizedBox(
                    height: 70, // Adjust the size of the play button as needed
                    width: 70, // Adjust the size of the play button as needed
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size:
                          64, // Adjust the size of the play button icon as needed
                      color: Colors.black, // Adjust the icon color as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    
        SizedBox(
          height: 20,
        ),
        SocialMediaPostCard(
          bio: "46th U.S president",
          name: "Joe Biden",
          text:
              "This is the Opportunity to Join the World Leading Tech\nProfessionals in 2022. All you  need do is to register\nwith the link below......... Read more",
          time: "30secs ago",
          image1: "assets/images/joe biden.png",
          image2: "assets/images/Joebiden1.png",
          like: "21",
          comment: "2k",
          share: "2",
        ),
        SizedBox(height: 20,),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "People You Know",
                  style: GoogleFonts.ubuntu(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                  SizedBox(height: 20,),
                PeopleCardWidget(
              profileImage: 'assets/images/friend1.png',
              name: 'John Doe',
              bio: 'Product designer',
              bio2: 'Lagos, Nigeria',
            ),
                  SizedBox(height: 20,),
            PeopleCardWidget(
              profileImage: 'assets/images/friend2.png',
              name: 'Jane Smith',
              bio2: 'Lagos, Nigeria',
              bio: 'Product designer',
            ),
                  SizedBox(height: 20,),
            PeopleCardWidget(
              profileImage: 'assets/images/friend3.png',
              name: 'John Doe',
              bio: 'Product designer',
              bio2: 'Lagos, Nigeria',
            ),
                  SizedBox(height: 20,),
            PeopleCardWidget(
              profileImage: 'assets/images/friend4.png',
              name: 'John Doe',
              bio: 'Product designer',
              bio2: 'Lagos, Nigeria',
            ),
                  SizedBox(height: 20,),
           
              ],
            ),
          ),
        ),
        
        // // Add more PeopleCardWidget instances as needed.
        // InkWell(
        //     onTap: () => null,
        //     child: Center(
        //       child: Text("see more",
        //           style: GoogleFonts.ubuntu(
        //             textStyle: TextStyle(
        //                 decoration: TextDecoration.underline,
        //                 fontSize: 16,
        //                 fontWeight: FontWeight.w400),
        //           )),
        //     )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Business Around You",
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
              ),
              BusinessAround()
            ],
          ),
        ),
      ],
    );
  }
}
