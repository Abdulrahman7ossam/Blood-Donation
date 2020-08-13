import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  /// Login Button
  LoginButton();

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color(0xFFFF4D4D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.7),
      ),
      padding: EdgeInsets.all(9.0),
      onPressed: () {
        Navigator.pushNamed(context, '/MyApp');
        print("Login Button Pressed");
      },
      child: Container(
        width: 280,
        height: 30,
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
