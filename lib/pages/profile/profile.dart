import 'package:flutter/material.dart';
import 'package:blood_donation/components/backgroundGradient.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const _PageBackground(),
        ],
      ),
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
        Divider(color: Colors.red[800], height: 4, thickness: 4),
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
              Color(0xFFFF4D4D),
              Color(0xFFFF4DA6),
            ],
          ),
        ),
      ),
    );
  }
}
