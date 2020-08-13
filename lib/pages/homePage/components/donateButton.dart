import 'package:flutter/material.dart';

class _DonateButton extends StatefulWidget {
  @override
  __DonateButtonState createState() => __DonateButtonState();
}

class __DonateButtonState extends State<_DonateButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 180),
            FlatButton(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "DONATE",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                print("Donation button pressed!");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.white, width: 4.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
