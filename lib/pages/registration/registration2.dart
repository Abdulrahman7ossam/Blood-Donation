import 'package:blood_donation/pages/registration/components/nextPageButton.dart';
import 'package:blood_donation/pages/registration/components/registrationHeader.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/pages/registration/components/registerTextField.dart';

class Registration2 extends StatefulWidget {
  @override
  _Registration2State createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
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
              "Do you suffer from any of the \nfollowing conditions?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            //NextPageButton(),
          ],
        ),
      ),
    );
  }
}
