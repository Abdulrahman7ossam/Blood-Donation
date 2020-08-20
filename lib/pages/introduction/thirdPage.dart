import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red[100],
            Colors.red[400],
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(height: 180.0),
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
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Donate to hospitals and blood',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'banks whenever possible',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 32,
                      ),
                      onPressed: () => Navigator.pop(context)),
                ),
                SizedBox(width: 50),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 32,
                    ),
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/Login', (route) => false),
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
