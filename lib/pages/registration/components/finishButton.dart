import 'package:flutter/material.dart';

class FinishButton extends StatefulWidget {
  final String routeToPushTo;

  /// FinishButton Button
  FinishButton(this.routeToPushTo);

  @override
  _FinishButtonState createState() => _FinishButtonState();
}

class _FinishButtonState extends State<FinishButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color(0xFFFF4D4D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.7),
      ),
      padding: EdgeInsets.all(9.0),
      onPressed: () {
        print("Finish Registration Button Pressed");
        Navigator.pushNamed(context, widget.routeToPushTo);
      },
      child: Container(
        width: 280,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Finish",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
