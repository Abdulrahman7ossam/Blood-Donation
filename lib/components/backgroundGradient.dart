import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  BackgroundGradient(this.height);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFF217A),
            Color(0xFFFF4D4D),
          ],
        ),
      ),
    );
  }
}
