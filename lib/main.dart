import 'package:flutter/material.dart';
import 'package:leafcare/start.dart';

void main() {
  runApp(const MyApp());
  print('mmmmmmmm');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
