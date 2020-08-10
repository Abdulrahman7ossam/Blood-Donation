import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LoginPageHeader(),
      ),
    );
  }
}

class LoginPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Image.asset('assets/blood-bag.png', height: 150, width: 150),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "عطاء",
              style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Color(0xEEDF473C)),
            ),
          ],
        ),
      ],
    );
  }
}
