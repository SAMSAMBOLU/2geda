// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class BusinessAround extends StatelessWidget {
  const BusinessAround({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
          SizedBox(width:10,),
          Business(image: "assets/images/Magento.png", text: "Happy bu..."),
    
    
        ],
      ),
    );
  }
}
class Business extends StatelessWidget {
  final String image;
  final String text;
  const Business(
    {
      super.key,
      required this.image,
      required this.text
      });

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: InkWell(onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessAroundYou(),))
          },
            child: Container(
              width: 69, 
              height: 71, 
              decoration: BoxDecoration(
                color: Color(0xFFFF8A15), 
                 borderRadius: BorderRadius.circular(5), // Border radius
                border: Border.all(
                  color: Colors.purple, // Border color
                  width: 1.0, // Border width
                ),
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 35, 
                    height: 35, 
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(50), 
                    ),
                    child: Center(
                      child: Image.asset(
                        image, 
                        width: 21, 
                        height: 21, 
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    text,
                    style: GoogleFonts.ubuntu(textStyle: TextStyle(
                      fontSize: 10, 
                      fontWeight: FontWeight.w400, 
                      color: Colors.black, 
                    ),)
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
