import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            BackgroundGradient(150.0),
            SizedBox(height: 5),
            Image(
              image: AssetImage('images/blood2.png'),
              height: 300,
              width: 300,
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Text(
                'A quick process',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.red.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'With important health measurements',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.red.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'and necessary measures',
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
              child: Divider(color: Colors.red.shade900),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(width: 50),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.red),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ThirdPage');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
