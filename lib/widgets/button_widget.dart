import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  final String text;
  final Color? bgColor;
  final Color? textColor;
  final IconData? icon;

  ButtonWidget(
      {super.key,
      required this.onPressed,
      required this.text,
      this.bgColor,
      this.textColor,
      this.icon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 20, color: textColor)),

            SizedBox(width: 18),
            Icon(
              icon,
              size: 30.0,
              color: textColor,
            ), // Use the provided text
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: bgColor ?? Color(0xFFFD725C),
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
