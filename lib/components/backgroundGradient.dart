import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
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
