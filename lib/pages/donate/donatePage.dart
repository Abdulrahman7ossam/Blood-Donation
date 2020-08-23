import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/pages/donate/components/donateTextField.dart';
import 'package:blood_donation/pages/donate/components/bookButton.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Color(0xFFFF217A),
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

class MapImage extends StatelessWidget {
  const MapImage();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        height: 400,
        width: MediaQuery.of(context).size.width * 0.85,
        child: Image(
          image: AssetImage("assets/bb.PNG"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  const BookingCard();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Card(
        elevation: 0,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                CustomTextField("Start Time"),
                CustomTextField("End Time"),
                CustomTextField("Where to book apointment"),
                BookButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
