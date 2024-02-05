import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget{
  final String value;
  final color;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  const TextWidget({super.key,required this.value, this.color, required this.textAlign, required this.fontSize, required this.fontWeight, });
  @override
  Widget build(BuildContext context) {
    return Text(
        value,
      textAlign: textAlign,
      style: GoogleFonts.raleway( textStyle: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: "Montserrat",
        fontWeight: fontWeight,

      )),

    );
  }

}