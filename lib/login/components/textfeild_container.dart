import 'package:flutter/material.dart';

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
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: kBackground, borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
