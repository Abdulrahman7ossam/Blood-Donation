import 'package:flutter/material.dart';

class BookButton extends StatefulWidget {
  /// Book Button
  BookButton();

  @override
  _BookButtonState createState() => _BookButtonState();
}

class _BookButtonState extends State<BookButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color(0xFFFF4D4D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.7),
      ),
      padding: EdgeInsets.all(9.0),
      onPressed: () {
        Navigator.pop(context);
        print("Book Button Pressed");
      },
      child: Container(
        width: 280,
        height: 30,
        child: Text(
          "Book",
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
