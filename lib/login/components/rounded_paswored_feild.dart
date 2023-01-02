import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove_ui/login/components/textfeild_container.dart';

class RoundedPaswordFeild extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;
  const RoundedPaswordFeild({
    Key? key,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        TextFeildContainer(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Your Password', border: InputBorder.none),
          ),
        ),
      ],
    ));
  }
}
