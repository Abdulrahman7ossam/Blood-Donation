import 'package:flutter/material.dart';
import 'package:blood_donation/data/data.dart';

class DonationsLivesSavedRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
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
          livesSaved,
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
          numberOfDonations,
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
