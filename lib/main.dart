import 'package:flutter/material.dart';
import 'package:rahove_ui/login/login_screen.dart';
import 'package:rahove_ui/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rahove',
      home: SplashScreen(),
    );
  }
}
