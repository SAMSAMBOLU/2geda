// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Updatefeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: updateFeedClass(),
    );
  }
}

class updateFeedClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostCreationPage(),
    );
  }
}

class PostCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Update your feed',
                        style: 
                        GoogleFonts.ubuntu(textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color:Color(0xFF4F0DA3)),)
                      ),
                      Text('What\'s going on', style: 
                        GoogleFonts.ubuntu(textStyle: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.w300),)),
                    ],
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/newcancel.png"),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous page
                    },
                  ),
    
                ],
              ),
              
              
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Write your post (up to 1000 words)',hintStyle: GoogleFonts.ubuntu(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300))
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Container(
                  width: 200,
                  height: 60, 
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 214, 217, 219), 
                      width: 2.0, 
                      ),
                      // borderRadius: BorderRadius.circular(8.0), // Adjust the border radius
                      ),
                   child: ElevatedButton(
                      onPressed: () {
                        // Add photo functionality
                      },
                      style: ElevatedButton.styleFrom(
                         primary: Colors.white, // Set the button background color to transparent
                         ),
                      child: const Column(
                        children: [Icon(Icons.photo), Text('Photo')],
                      ),
                    ),
                 ),
             ElevatedButton(
                    onPressed: () {
                      // Add product functionality
                    },
                    child: const Column(
                      children: [Icon(Icons.shopping_cart), Text('Product')],
                    ),
                  ),
                 ElevatedButton(
                    onPressed: () {
                      // Add live location functionality
                    },
                    child: const Column(
                      children: [Icon(Icons.location_on), Text('Location')],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               ElevatedButton(
                    onPressed: () {
                      // Add music functionality
                    },
                    child: const Column(
                      children: [Icon(Icons.music_note), Text('Music')],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add voice note functionality
                    },
                    child: const Column(
                      children: [Icon(Icons.mic), Text('Voice Note')],
                    ),
                  ),
                ElevatedButton(
                    onPressed: () {
                      // Add document functionality
                    },
                    child: const Column(
                      children: [Icon(Icons.description), Text('Document')],
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Add hashtags',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Tag friends',
                ),
              ),
              // Display tagged friends' profile pictures and cancel option here
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Add post functionality
                },
                child: const Text('Continue'),
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}
