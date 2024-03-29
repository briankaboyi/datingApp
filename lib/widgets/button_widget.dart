import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  final String? text;
  final Color? bgColor;
  final Color? textColor;
  final IconData? icon;

  ButtonWidget(
      {super.key,
      required this.onPressed, this.text,
      this.bgColor,
      this.textColor,
      this.icon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (text != null)
            Text(text!, style: TextStyle(fontSize: 16, color: textColor)),

            SizedBox(width: 14),
            Icon(
              icon,
              size: 20.0,
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
