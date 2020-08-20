import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  CustomTile(this.title, this.content);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontSize: 20)),
      children: <Widget>[
        ListTile(title: Text(content, style: TextStyle(fontSize: 18))),
      ],
    );
  }
}
