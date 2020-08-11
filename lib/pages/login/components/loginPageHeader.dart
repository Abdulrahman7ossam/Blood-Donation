import 'package:flutter/material.dart';

class LoginPageHeader extends StatelessWidget {
  /// Contains blood-bag image and application title.
  const LoginPageHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const _TopImageHeader(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment(0.5, 0.8),
              children: [
                Text(
                  "عطاء",
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "تبرع بالدم",
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF445464)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _TopImageHeader extends StatelessWidget {
  /// Background clipped gradient on Login page.
  const _TopImageHeader();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _MyClipper(),
      child: Container(
        height: 250,
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
          image: DecorationImage(
            image: AssetImage("assets/blood-transfusion.png"),
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
