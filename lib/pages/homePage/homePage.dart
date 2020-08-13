import 'package:blood_donation/pages/homePage/components/backgroundGradient.dart';
import 'package:blood_donation/pages/homePage/components/donateButton.dart';
import 'package:blood_donation/pages/homePage/components/donationsLivesSaved.dart';
import 'package:blood_donation/pages/homePage/components/nextDonationWindow.dart';
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
          LastDonationCard(),
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
        const BackgroundGradient(),
        DonationsLivesSavedRow(),
        NextDonationWindow(),
        DonateButton(),
      ],
    );
  }
}

class LastDonationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        leading: Icon(Icons.timelapse, size: 40, color: Colors.red),
        title: Text(
          "Last Donation Date",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "14 Augest 2020",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ),
    );
  }
}
