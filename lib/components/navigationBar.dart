import 'package:flutter/material.dart';

/// Main app navigation bar
Widget customNavigationBar(int selectedIndex, Function onItemTapped) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    iconSize: 40,
    items: navigationBarItems,
    elevation: 8,
    currentIndex: selectedIndex,
    selectedItemColor: Colors.red,
    onTap: onItemTapped,
  );
}

List<BottomNavigationBarItem> navigationBarItems = [
  // Information Tab
  BottomNavigationBarItem(
    icon: Icon(Icons.date_range),
    title: Container(
      child: Column(children: <Widget>[
        SizedBox(height: 5),
        Text("Information"),
      ]),
    ),
  ),

  // HomePage Tab
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    title: Text('HomePage'),
  ),

  // Profile Tab
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    title: Text('Profile'),
  ),
];
