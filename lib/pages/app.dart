import 'package:chatty/pages/app/home.dart';
import 'package:chatty/pages/app/soon.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 2;
  List _pages = [
    ComingSoon(),
    ComingSoon(),
    HomeApp(),
    ComingSoon(),
    ComingSoon(),
    ComingSoon(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.orange,
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        color: Colors.blue,
        index: 2,
        items: const <Widget>[
          Icon(
            Icons.group,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.book,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.navigation,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.mosque,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
