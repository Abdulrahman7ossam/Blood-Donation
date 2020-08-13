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
          Expanded(
            child: ListView(
              children: [
                const FactOfTheDay(),
                const LastDonationCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FactOfTheDay extends StatelessWidget {
  /// Fact of the day card.
  const FactOfTheDay();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 130,
        decoration: _cardBackground(),
        alignment: Alignment.center,
        child: ListTile(
          leading: Icon(Icons.info_outline, size: 50, color: Colors.green),
          title: Text(
            "Fact Of The Day",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "The average adult has 10 to 12 pints of blood in their body.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _cardBackground() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.red[900],
      image: DecorationImage(
        image: AssetImage('assets/factOfTheDayBackground.jfif'),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.dstATop,
        ),
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
  /// Last donation card.
  const LastDonationCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(25.0),
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
