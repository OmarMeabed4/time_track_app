import 'package:flutter/material.dart';
import 'package:time_tracker_app/Screens/GeneralWidgets/MyElevatedButton.dart';

class MySignInButton extends MyElevatedButton {
  MySignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15),
          ),
          color: color,
          onPressed: onPressed,
       );
}
