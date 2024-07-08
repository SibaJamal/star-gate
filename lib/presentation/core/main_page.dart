

import 'package:auto_route/annotations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../market/market_page.dart';
import '../posting/posting_page.dart';
import '../profile/profile_page.dart';
import '../theme/app_theme.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
   HomePage(),
    PostingPage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add_circle_outline,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (position) {
          setState(() {
            _currentIndex = position;
          });
        },
        index: _currentIndex,
        height: 50,
        backgroundColor: Colors.white,
        color: primaryColor,
        animationDuration: const Duration(milliseconds: 60),
      ),
    );
  }
}
