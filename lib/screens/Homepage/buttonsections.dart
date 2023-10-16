// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/Homepage/allpost.dart';
import 'package:badges/badges.dart' as badges;
import 'package:project/screens/Homepage/profilepic.dart';
// import 'package:project/screens/flaotingActionPage/Updatefeed.dart';
import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
// import 'package:flutter/material.dart';

// import 'screens/home_screen.dart';


class HeadNavBar extends StatelessWidget {
  final theme = ThemeData(
    primarySwatch: Colors.purple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: const {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoWillPopScopePageTransionsBuilder(),
      },
    ),
  );

  HeadNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: HeadNav(),
    );
  }
}





class HeadNav extends StatefulWidget {
  const HeadNav({super.key});

  @override
  _HeadNavState createState() => _HeadNavState();
}

class _HeadNavState extends State<HeadNav> {
  int _selectedIndex = 0;

  final List<String> _items = [
    'All Posts',
    'Images',
    'Videos',
    'Voice Notes',
    'Location',
    'Music',
  ];

  final List<Widget> _screens = [
    AllPostScreen(),
    ImagesScreen(),
    VideosScreen(),
    VoiceNotesScreen(),
    LocationScreen(),
    MusicScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset("assets/images/2geda copy.png", height: 90, width: 90),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search, color: Colors.black, size: 25),
                  onPressed: () {
                    // Implement your search functionality here
                  },
                ),
                badges.Badge(
                  badgeContent: Text('3', style: TextStyle(color: Colors.white)),
                  badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
                  position: badges.BadgePosition.topEnd(top: 0, end: 3),
                  child: IconButton(
                    icon: Icon(Icons.notifications, color: Colors.black, size: 25),
                    onPressed: () {
                      // Implement your notification functionality here
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: 460,
            height: 74,
            decoration: BoxDecoration(
              color: Colors.grey[350],
            ),
            child: Image.asset("assets/images/banner.png"),
          ),
          SizedBox(height: 15),
          ProfileLists(),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            height: 31.0,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 78,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _selectedIndex == index ? Color(0xFF4F0DA3) : Colors.transparent,
                    ),
                    child: Text(
                      _items[index],
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _screens[_selectedIndex],
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        height: 63,
        width: 63,
        child: FloatingActionButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) =>updateFeedClass(),));
          },
          backgroundColor: Color(0xFF4F0DA3),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}


class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Images Screen'),
    );
  }
}

class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Videos Screen'),
    );
  }
}

class VoiceNotesScreen extends StatelessWidget {
  const VoiceNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Voice Notes Screen'),
    );
  }
}

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Location Screen'),
    );
  }
}

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Music Screen'),
    );
  }
}

