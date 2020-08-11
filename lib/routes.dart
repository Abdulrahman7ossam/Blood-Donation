import 'package:flutter/widgets.dart';
import 'package:blood_donation/pages/homePage/homePage.dart';
import 'package:blood_donation/pages/information/information.dart';
import 'package:blood_donation/pages/introduction/introduction.dart';
import 'package:blood_donation/pages/profile/profile.dart';
import 'package:blood_donation/pages/login/login.dart';
import 'package:blood_donation/pages/registration/registration.dart';

/// Routes as Map<String, WidgetBuilder>.
/// Used for the route parameter in MaterialApp.
final Map<String, WidgetBuilder> routesAsWidgetBuilder =
    <String, WidgetBuilder>{
  '/HomePage': (context) => HomePage(),
  '/Information': (context) => Information(),
  '/Introduction': (context) => Introduction(),
  '/Profile': (context) => Profile(),
  '/Login': (context) => Login(),
  '/Registration': (context) => Registration(),
};
