import 'package:flutter/material.dart';

class NextDonationWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 290),
        Text(
          "Donation Window",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            //fontWeight: FontWeight.bold,
            fontFamily: "Cream-Cake",
          ),
        ),
        Text(
          " : ",
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          "Now!",
          style: TextStyle(
            color: Colors.green,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
