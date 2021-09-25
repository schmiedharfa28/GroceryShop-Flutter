import 'package:flutter/material.dart';
import 'package:flutter_jago_coding_lat/home/homescreen.dart';
import 'package:flutter_jago_coding_lat/home/searching.dart';
import 'package:flutter_jago_coding_lat/profil/profil.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectednavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectednavbar = index;
    });
  }

  final _widgetOptions = [
    HomeScreen(),
    Searching(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectednavbar],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          selectedItemColor: Color(0xff53BC3D),
          unselectedItemColor: Color(0xffAAAAAA),
          type: BottomNavigationBarType.fixed,
          onTap: _changeSelectedNavBar,
          backgroundColor: Colors.white,
          currentIndex: _selectednavbar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
              ),
              activeIcon: Icon(
                Icons.home,
                size: 24,
                color: Color(0xff53BC3D),
              ),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
                size: 24,
              ),
              activeIcon: Icon(
                Icons.list_alt,
                size: 24,
                color: Color(0xff53BC3D),
              ),
              label: ('List Item'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24,
              ),
              activeIcon: Icon(
                Icons.person,
                size: 24,
                color: Color(0xff53BC3D),
              ),
              label: ('Profil'),
            ),
          ],
        ));
  }
}
