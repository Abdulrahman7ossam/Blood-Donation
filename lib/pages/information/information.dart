import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:blood_donation/pages/information/informationWidgets.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                BackgroundGradient(260.0),
                Icon(Icons.info_outline, color: Colors.white, size: 180),
              ],
            ),
            const DonationFacts(),
            const WhatToExpect(),
            const CareAfterDonating(),
            const BasicRequierments(),
            const DonationFreq(),
            const RiskAndBenefits(),
            const SpecialConsiderations(),
            const DonationGuidelines(),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
