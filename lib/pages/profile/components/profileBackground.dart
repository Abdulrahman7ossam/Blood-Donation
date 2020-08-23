import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  const PageBackground();

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
