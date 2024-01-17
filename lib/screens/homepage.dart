import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rep_radar/screens/dashboard.dart';
import 'package:rep_radar/screens/homescreen.dart';
import 'package:rep_radar/screens/profile.dart';
import 'package:rep_radar/screens/track.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    Homescreen(),
    Dashboard(),
    TrackScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.blueAccent,
          actions: [
            CircleAvatar(
              
            ),
          ],
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
          ],
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
        ));
  }
}
