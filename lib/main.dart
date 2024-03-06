import 'package:flutter/material.dart';
import 'package:kkw_application/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const SplashScreen()
    );
  }
}
