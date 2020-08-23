import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:blood_donation/pages/homePage/components/donateButton.dart';
import 'package:blood_donation/pages/homePage/components/donationsLivesSaved.dart';
import 'package:blood_donation/pages/homePage/components/factOfTheDay.dart';
import 'package:blood_donation/pages/homePage/components/lastDonationCard.dart';
import 'package:blood_donation/pages/homePage/components/nextDonationWindow.dart';
import 'package:blood_donation/pages/homePage/components/videoCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _HomePageHeader(),
          Expanded(
            child: ListView(
              children: [
                const LastDonationCard(),
                const FactOfTheDay(),
                VideoCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundGradient(280.0, true),
        DonationsLivesSavedRow(),
        NextDonationWindow(),
        DonateButton(),
      ],
    );
  }
}
