import 'package:blood_donation/pages/homePage/components/backgroundGradient.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/pages/homePage/components/donationsLivesSaved.dart';
import 'package:blood_donation/pages/homePage/components/nextDonationWindow.dart';
import 'package:blood_donation/pages/homePage/components/donateButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackgroundGradient(),
          DonationsLivesSavedRow(),
          NextDonationWindow(),
          DonateButton(),
        ],
      ),
    );
  }
}
