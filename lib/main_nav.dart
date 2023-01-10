import 'package:fitnuts/screens/articles.dart';
import 'package:fitnuts/screens/home.dart';
import 'package:fitnuts/screens/recipes.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class MainNavBar extends StatefulWidget {
  MainNavBar({super.key, this.currentIndex = 0});
  int currentIndex;

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  // int currentIndex = 0;
  bool selected = false;
  final screens = [
    const HomePage(),
    const Recipes(),
    const Articles(),
    // const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        unselectedItemColor: sirEdmund,
        selectedItemColor: const Color(0xFF00A7DF),
        onTap: (value) => setState(() => widget.currentIndex = value),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/recipes.png'),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/articles.png',
            ),
            label: 'Articles',
          ),
          // BottomNavigationBarItem(
          //   icon: Image.asset('images/profile.png'),
          //   label: 'Profile',
          // ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
