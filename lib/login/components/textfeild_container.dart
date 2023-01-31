import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class TextFeildContainer extends StatelessWidget {
  final child;
  const TextFeildContainer({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      width: 280.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: kBackground, borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
