import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBase extends StatelessWidget {
  final String? text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  const TextBase({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.fontStyle,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        fontStyle: fontStyle,
        color: color ?? const Color.fromARGB(255, 111, 66, 55),
        fontWeight: fontWeight,
        fontSize: fontSize ?? 16,
        decoration: decoration,
      ),
    );
  }
}
