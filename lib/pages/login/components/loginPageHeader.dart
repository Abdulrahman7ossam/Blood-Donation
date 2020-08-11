import 'package:flutter/material.dart';

class LoginPageHeader extends StatelessWidget {
  /// Contains blood-bag image and application title.
  const LoginPageHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/blood-transfusion.png', height: 220, width: 220),
        SizedBox(height: 30),
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
                  style: TextStyle(fontSize: 18.0, color: Color(0xEE445464)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
