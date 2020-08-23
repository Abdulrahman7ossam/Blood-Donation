import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage("assets/user.png"),
      radius: 50,
    );
  }
}
