import 'package:flutter/material.dart';
import 'package:testpixel/splash_page.dart';
import 'package:testpixel/test_pixel_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Pixel App',
      home: SplashPage(),
    );
  }
}