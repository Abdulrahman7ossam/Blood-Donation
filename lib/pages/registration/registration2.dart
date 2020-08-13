import 'package:blood_donation/pages/registration/components/nextPageButton.dart';
import 'package:blood_donation/pages/registration/components/registrationHeader.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/pages/registration/components/registerTextField.dart';

import 'components/CustomCheckbox.dart';

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
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "AIDS\n Asthma\n Babesiosis\n Blood disorders or bleeding tendencies\n Brain or spinal surgery that required a transplant of brain covering (dura mater)\n Creutzfeldt-Jakob Disease (CJD)\n Cancer\n Colds\n fever\n flu\n sore throat\n Colitis\n Colostomy\n Dementia\n Emphysema\n Filariasis\n Hemochromatosis\n Leprosy\n Seizures in the last five Years\n Strokes\n Hyperthyroid\n Tuberculosis",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            CheckBoxes(),
            NextPageButton('/Registration3'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class CheckBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomCheckbox("I do"),
            CustomCheckbox("I do not"),
          ],
        ),
      ),
    ]);
  }
}
