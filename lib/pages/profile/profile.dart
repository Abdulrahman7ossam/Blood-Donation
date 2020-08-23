import 'package:flutter/material.dart';
import 'package:blood_donation/components/backgroundGradient.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final name = "Abdelrahman Kassem".toUpperCase();
  final age = "21";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment(-0.85, -0.4),
        children: [
          const _PageBackground(),
          const _UserAvatar(),
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
              "Heroes come in all types and sizes.",
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
                  _BloodType(),
                  SizedBox(height: 40),
                  _DonationStatus(),
                ],
              ),
            ),
          ),
        ],
      ),
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

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage("assets/user.png"),
      radius: 50,
    );
  }
}

class _PageBackground extends StatelessWidget {
  const _PageBackground();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BackgroundGradient(MediaQuery.of(context).size.height / 3, false),
        Divider(color: Colors.red[300], height: 2, thickness: 2),
        _BottomBackground(),
      ],
    );
  }
}

class _BottomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Color(0xFFFF4D4D),
              // Color(0xFFFF4DA6),
              Colors.red[200],
              Colors.red[900],
            ],
          ),
        ),
      ),
    );
  }
}
