import 'package:flutter/material.dart';
import 'package:blood_donation/data/data.dart';

class ProfileRows extends StatelessWidget {
  const ProfileRows();

  final double _gapBetweenRows = 90.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _BloodType(),
        SizedBox(height: _gapBetweenRows),
        const _DonationStatus(),
        SizedBox(height: _gapBetweenRows),
        const _NumnberOfDonations(),
      ],
    );
  }
}

class _NumnberOfDonations extends StatelessWidget {
  const _NumnberOfDonations();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.accessibility_new, color: Colors.blue, size: 60),
        SizedBox(width: 10),
        _customText("Donations"),
        SizedBox(width: 155),
        _customText(numberOfDonations),
      ],
    );
  }
}

class _BloodType extends StatelessWidget {
  const _BloodType();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.favorite, color: Colors.red, size: 60),
        SizedBox(width: 10),
        _customText("Blood Type"),
        SizedBox(width: 130),
        _customText(bloodType),
      ],
    );
  }
}

class _DonationStatus extends StatelessWidget {
  const _DonationStatus();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.settings_backup_restore, color: Colors.green, size: 60),
        SizedBox(width: 10),
        _customText("Donation Status"),
        SizedBox(width: 40),
        _customText(donationStatus),
      ],
    );
  }
}

Widget _customText(String text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  );
}
