import 'package:blood_donation/pages/profile/components/profileBackground.dart';
import 'package:blood_donation/pages/profile/components/profileRows.dart';
import 'package:blood_donation/pages/profile/components/userAvatar.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/data/data.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment(-0.85, -0.4),
        children: [
          const PageBackground(),
          const UserAvatar(),
          Positioned(
            left: 135,
            bottom: 570,
            child: Text(
              "$name, $age",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 135,
            bottom: 540,
            child: Text(
              quote,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 370,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const ProfileRows(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
