import 'package:flutter/material.dart';

class GenderCheckbox extends StatefulWidget {
  final String title;

  GenderCheckbox(this.title);

  @override
  _GenderCheckboxState createState() => _GenderCheckboxState();
}

class _GenderCheckboxState extends State<GenderCheckbox> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CheckboxListTile(
        title: Text(widget.title),
        value: checkedValue,
        onChanged: (newValue) {
          setState(() => checkedValue = newValue);
        },
        controlAffinity:
            ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
  }
}
