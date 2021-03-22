import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final Widget child;
  final String text;
  final double corRad;
  final Color color;
  final VoidCallback onPressed;
  final height;

  MyElevatedButton({
    this.child,
    this.text,
    this.corRad: 12.0,
    this.color,
    this.onPressed,
    this.height: 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(corRad),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
