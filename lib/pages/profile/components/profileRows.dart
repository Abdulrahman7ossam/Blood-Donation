import 'package:flutter/material.dart';

class ProfileRows extends StatelessWidget {
  const ProfileRows();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _BloodType(),
        SizedBox(height: 50),
        const _DonationStatus(),
        SizedBox(height: 50),
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
        Icon(Icons.favorite, color: Colors.red, size: 60),
        SizedBox(width: 10),
        _customText("Blood Type"),
        SizedBox(width: 130),
        _customText("A+"),
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
        _customText("A+"),
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
        _customText("Eligble"),
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
