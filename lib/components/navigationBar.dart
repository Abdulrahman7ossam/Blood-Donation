import 'package:flutter/material.dart';

/// Main app navigation bar
Widget customNavigationBar(int selectedIndex, Function onItemTapped) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    iconSize: 30,
    items: navigationBarItems,
    elevation: 0,
    currentIndex: selectedIndex,
    selectedItemColor: Colors.red[300],
    onTap: onItemTapped,
    backgroundColor: Colors.transparent,
    unselectedFontSize: 14.0,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  );
}

List<BottomNavigationBarItem> navigationBarItems = [
  // Information Tab
  BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("Information")),

  // HomePage Tab
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home Page')),

  // Profile Tab
  BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
];
