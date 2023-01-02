import 'package:flutter/material.dart';

class BottomDevider extends StatelessWidget {
  final String text;
  const BottomDevider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.9,
      child: Row(
        children: <Widget>[
          BuildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey.shade700),
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
