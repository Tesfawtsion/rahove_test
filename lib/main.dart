import 'package:flutter/material.dart';

import 'package:rahove_ui/spalsh_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(353, 667),
      builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rahove',
          home: SplashScreen()),
    );
  }
}
