import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove_ui/login/components/textfeild_container.dart';

class RoundedInputFeild extends StatelessWidget {
  final String text;
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputFeild({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 16.sp),
          ),
          TextFeildContainer(
            child: TextField(
              onChanged: onChanged,
              decoration:
                  InputDecoration(hintText: hintText, border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
