import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // Import the welcome screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talk To Me',
      theme: ThemeData(
        primarySwatch: Colors.brown, // Change to your preferred color
      ),
      home: WelcomeScreen(), // Set the welcome screen as the home
    );
  }
}
