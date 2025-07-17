import 'package:flutter/material.dart';
import 'package:paywell/src/screens/paywell_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fynedoc',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0A0E23),
        fontFamily: 'Manrope',
      ),
      home: const PaywallScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
