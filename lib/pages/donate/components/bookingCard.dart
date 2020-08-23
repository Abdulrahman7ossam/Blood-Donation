import 'package:blood_donation/pages/donate/components/bookButton.dart';
import 'package:blood_donation/pages/donate/components/donateTextField.dart';
import 'package:flutter/material.dart';

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
