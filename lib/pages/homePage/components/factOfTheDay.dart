import 'package:flutter/material.dart';

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
                color: Colors.black,
              ),
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
          Colors.black.withOpacity(0.75),
          BlendMode.dstATop,
        ),
      ),
    );
  }
}
