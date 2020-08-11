import 'package:flutter/material.dart';

class NextPageButton extends StatefulWidget {
  /// NextPageButton Button
  NextPageButton();

  @override
  _NextPageButtonState createState() => _NextPageButtonState();
}

class _NextPageButtonState extends State<NextPageButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color(0xFFFF4D4D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.7),
      ),
      padding: EdgeInsets.all(9.0),
      onPressed: () {
        print("Next Page Button Pressed");
      },
      child: Container(
        width: 280,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Next Page",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
