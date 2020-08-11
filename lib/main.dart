import 'package:flutter/material.dart';
import 'package:blood_donation/routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routesAsWidgetBuilder,
      theme: ThemeData(fontFamily: "ProximaNova"),
      initialRoute: '/Login',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Scaffold(),
      ),
    );
  }
}
