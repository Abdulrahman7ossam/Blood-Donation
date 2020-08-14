import 'package:flutter/material.dart';

class LastDonationCard extends StatelessWidget {
  /// Last donation card.
  const LastDonationCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        leading: Icon(Icons.timelapse, size: 40, color: Colors.red),
        title: Text(
          "Last Donation Date",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "14 Augest 2020",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ),
    );
  }
}
