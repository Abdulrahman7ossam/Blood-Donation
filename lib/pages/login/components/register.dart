import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dont have an account yet?",
          style: TextStyle(color: Color(0xFF9EA8B0), fontSize: 18.0),
        ),
        MaterialButton(
          child: Text(
            "REGISTER",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          onPressed: () {
            print("Register button pressed");
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
