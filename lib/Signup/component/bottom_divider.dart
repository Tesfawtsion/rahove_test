import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomDevider extends StatelessWidget {
  final String text;
  const BottomDevider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: 330.w,
      child: Row(
        children: <Widget>[
          BuildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                  fontSize: 15.sp),
            ),
          ),
          BuildDivider(),
        ],
      ),
    );
  }

  Expanded BuildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.grey,
        height: 1.5,
      ),
    );
  }
}
