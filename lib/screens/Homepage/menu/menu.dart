// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                    label:  Text(
                      'More',
                      style: GoogleFonts.ubuntu(textStyle:
                       TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
                       color: Color(0xFF4F0DA3), 
                      )),
                    ),
                    onPressed: () {
                      // Add your action for the first menu item
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,size: 16,
                      color: Color(0xFF4F0DA3), 
                    ),
                    
                  ),
                  
                ],
              ),
            ),
          ],
        );
  }
}
