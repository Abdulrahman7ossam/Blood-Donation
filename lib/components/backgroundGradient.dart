import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  BackgroundGradient(this.height, this.curve);

  final double height;
  final bool curve;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: curve == true ? _MyClipper() : null,
      child: Container(
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
      ),
    );
  }
}

/// Custom path clipper.
class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
