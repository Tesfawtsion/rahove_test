import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;
  const SocialMediaIcons({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 0.5, color: Colors.grey.shade400.withOpacity(0.3))),
        child: Image.asset(
          iconSrc,
        ),
      ),
    );
  }
}
