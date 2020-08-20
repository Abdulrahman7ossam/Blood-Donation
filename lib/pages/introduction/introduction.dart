import 'package:flutter/material.dart';
import 'package:blood_donation/components/backgroundGradient.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          BackgroundGradient(150.0),
          SizedBox(height: 40),
          Image(image: AssetImage('images/1stblood.jpg')),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Donate To Others',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.red.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Donate to people in need',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.red.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'One drop at a time',
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
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios, color: Colors.red),
              onPressed: () {
                Navigator.pushNamed(context, '/SecondPage');
              },
            ),
          ),
        ],
      ),
    );
  }
}
