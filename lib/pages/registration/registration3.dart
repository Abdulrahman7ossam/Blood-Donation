import 'package:blood_donation/pages/registration/components/nextPageButton.dart';
import 'package:blood_donation/pages/registration/components/registrationHeader.dart';
import 'package:flutter/material.dart';

import 'package:blood_donation/pages/registration/components/CustomCheckbox.dart';

class Registration3 extends StatefulWidget {
  @override
  _Registration3State createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const _PageContents(),
          _CheckBoxes(),
          NextPageButton('/Registration4'),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class _PageContents extends StatelessWidget {
  const _PageContents();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "Do you suffer from any of the \nfollowing conditions? (2)",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                "Allergies\n Anemia\n Arthritis\n Blood Pressure\n Bronchitis\n Chicken Pox\n Chlamydia\n Dermatitis\n Diabetes\n Diarrhea\n Eczema\n Food Poisoning\n Gastroenteritis\n Gall Stone\n Gonorrhea/Syphilis\n Heart attack\n Herpes (genital)\n Malaria; had Malaria in last three years\n Pregnancy and Miscarriage\n Spondylosis\n Hypothyroid\n Viral Infection\n Worms",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CheckBoxes extends StatelessWidget {
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
