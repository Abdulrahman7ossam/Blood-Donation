import 'package:blood_donation/components/navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routesAsWidgetBuilder,
      theme: ThemeData(fontFamily: "ProximaNova"),
      initialRoute: '/Login',
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // home page as default page
  int _selectedIndex = 1;

  final _pageOptions = [
    routesAsWidgets['/Information'],
    routesAsWidgets['/HomePage'],
    routesAsWidgets['/Profile'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: customNavigationBar(_selectedIndex, _onItemTapped),
      body: SafeArea(child: _pageOptions[_selectedIndex]),
    );
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
