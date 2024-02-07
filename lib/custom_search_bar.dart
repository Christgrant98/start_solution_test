import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  final IconData icon;
  final String placeholder;

  const CustomSearchBar({
    Key? key,
    required this.icon,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 50,
        child: CupertinoSearchTextField(
          placeholder: placeholder,
          prefixIcon: Icon(icon),
          itemColor: Colors.black,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            color: Colors.black,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
