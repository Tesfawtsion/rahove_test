import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextContainer extends StatelessWidget {
  final String text;
  const TextContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 87, 87, 87),
          borderRadius: BorderRadius.circular(2)),
      child: Text(
        text,
        style: GoogleFonts.poppins(color: Colors.white),
      ),
    );
  }
}
