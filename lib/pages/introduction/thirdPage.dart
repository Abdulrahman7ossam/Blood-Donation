import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/blood3.png'),
              height: 300,
              width: 300,
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Hospitals',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.red.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Donate to hospitals and blood',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.red.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'banks whenever possible',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.red.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.red.shade900,
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.home, color: Colors.red),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/Introduction', (route) => false);
                },
              ),
            ),
            Container(
              child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.red),
                  onPressed: () => Navigator.pop(context)),
            ),
          ],
        ),
      ),
    );
  }
}
