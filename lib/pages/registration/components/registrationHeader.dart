import 'package:flutter/material.dart';

class RegistrationHeader extends StatelessWidget {
  /// Background clipped gradient on Login page.
  const RegistrationHeader();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _MyClipper(),
      child: Container(
        height: 150,
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
        child: _AppName(),
      ),
    );
  }
}

class _AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment(0.2, 0.8),
          children: [
            Text(
              "عطاء",
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF445464),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
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
