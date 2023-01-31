import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kprimarycolor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 270.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              backgroundColor: color),
          onPressed: press,
          child: Text(text,
              style: GoogleFonts.poppins(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp)),
        ),
      ),
    );
  }
}
