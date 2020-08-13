import 'package:blood_donation/pages/registration/components/CustomCheckbox.dart';
import 'package:blood_donation/pages/registration/components/nextPageButton.dart';
import 'package:blood_donation/pages/registration/components/registrationHeader.dart';
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
            RegistrationHeader(),
            CustomTextField("Name"),
            CustomTextField("Email"),
            CustomTextField("Password"),
            CustomTextField("Phone Number"),
            CustomTextField("CPR"),
            CustomTextField("Date of Birth"),
            GenderSelection(),
            SizedBox(height: 20),
            NextPageButton('/Registration2'),
          ],
        ),
      ),
    );
  }
}

class GenderSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Gender: ", style: TextStyle(fontSize: 18)),
      Container(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomCheckbox("Male"),
            CustomCheckbox("Female"),
          ],
        ),
      ),
    ]);
  }
}
