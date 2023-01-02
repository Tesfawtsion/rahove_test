import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final bool login;
  final VoidCallback pressed;
  const AlreadyHaveAccount({
    Key? key,
    this.login = true,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account? " : "Already have account? ",
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: pressed,
          child: Text(login ? "Sign Up" : "Sign In",
              style:
                  TextStyle(color: kprimarycolor, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
