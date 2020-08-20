import 'package:flutter/material.dart';

class DonationsLivesSavedRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NumberOfDonations(),
            _NumberOfTimesBloodWasUsed(),
          ],
        ),
      ],
    );
  }
}

class _NumberOfTimesBloodWasUsed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Lives Saved",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontFamily: "Cream-Cake",
          ),
        ),
        Text(
          "1",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}

class _NumberOfDonations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Donations",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontFamily: "Cream-Cake",
          ),
        ),
        Text(
          "4",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}
