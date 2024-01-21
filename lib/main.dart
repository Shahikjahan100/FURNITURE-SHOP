import 'package:flutter/material.dart';
import 'package:furniture_shop/FirstPage.dart';
import 'package:furniture_shop/HomePage.dart';
import 'package:furniture_shop/Second.dart';
import 'package:furniture_shop/Tester.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Second(),
    );
  }
}
