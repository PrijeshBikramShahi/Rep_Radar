import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  int _currentIndex = 1;

  List<Widget> _pages = [
    Homescreen(),
    Dashboard(),
    TrackScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: _pages[_currentIndex],
        bottomNavigationBar: CupertinoTabBar(
          iconSize: 25,
          height: 50,
          activeColor: Colors.red,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimney),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.fireFlameCurved),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.personRunning),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAstronaut),
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
