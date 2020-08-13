import 'package:blood_donation/pages/registration/components/finishButton.dart';
import 'package:blood_donation/pages/registration/components/nextPageButton.dart';
import 'package:blood_donation/pages/registration/components/registrationHeader.dart';
import 'package:flutter/material.dart';

class Registration4 extends StatefulWidget {
  @override
  _Registration4State createState() => _Registration4State();
}

class _Registration4State extends State<Registration4> {
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
            RegistrationHeader(),
            Text(
              "You have succsessfully signed up!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            FinishButton('/HomePage'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
