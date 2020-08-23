import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:blood_donation/pages/donate/components/bookingCard.dart';
import 'package:blood_donation/pages/donate/components/mapImage.dart';
import 'package:flutter/material.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
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
      body: Stack(
        children: [
          BackgroundGradient(MediaQuery.of(context).size.height, false),
          Center(
            child: Column(
              children: [
                const MapImage(),
                SizedBox(height: 25),
                const BookingCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
