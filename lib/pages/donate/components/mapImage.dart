import 'package:flutter/material.dart';

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
