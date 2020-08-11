import 'package:flutter/material.dart';
import 'package:blood_donation/pages/registration/components/registerTextField.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF217A),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: [
            _TopGradient(),
            _AppName(),
            SizedBox(height: 30),
            CustomTextField("Name"),
            CustomTextField("Email"),
            CustomTextField("Password"),
            CustomTextField("Phone Number"),
            CustomTextField("CPR"),
          ],
        ),
      ),
    );
  }
}

class _AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _TopGradient extends StatelessWidget {
  /// Background clipped gradient on Login page.
  const _TopGradient();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _MyClipper(),
      child: Container(
        height: 100,
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
