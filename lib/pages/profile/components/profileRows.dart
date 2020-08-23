import 'package:flutter/material.dart';

class ProfileRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BloodType(),
        SizedBox(height: 40),
        _DonationStatus(),
      ],
    );
  }
}

class _BloodType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.favorite, color: Colors.red, size: 60),
        SizedBox(width: 10),
        customText("Blood Type"),
        SizedBox(width: 130),
        customText("A+"),
      ],
    );
  }
}

class _DonationStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.settings_backup_restore, color: Colors.green, size: 60),
        SizedBox(width: 10),
        customText("Donation Status"),
        SizedBox(width: 40),
        customText("Eligble"),
      ],
    );
  }
}

Widget customText(String text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  );
}
