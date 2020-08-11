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
