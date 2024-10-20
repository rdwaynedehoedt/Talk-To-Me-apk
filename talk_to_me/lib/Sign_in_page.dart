import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4F2), // Background color from your design
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding around the content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to fill the screen width
            children: [
              SizedBox(height: 40), // Space from the top of the page

              Center(
                child: Text(
                  'Sign In To Talk To Me',
                  style: TextStyle(
                    fontSize: 30, // Title font size
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[700], // Title color from your design
                  ),
                ),
              ),
              SizedBox(height: 40), // Space between title and form fields

              // Step 2: Add the Email Field
              Text(
                'Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[600], // Label color from your design
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter your email', // Placeholder text
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  fillColor: Colors.white, // Background color for the text field
                  filled: true, // Make sure the background color is filled
                ),
              ),
              SizedBox(height: 20), // Space between email and password fields

              // Step 3: Add the Password Field
              Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[600], // Label color from your design
                ),
              ),
              SizedBox(height: 8),
              TextField(
                obscureText: true, // Hide the password input
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Enter your password', // Placeholder text
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  fillColor: Colors.white, // Background color for the text field
                  filled: true, // Make sure the background color is filled
                ),
              ),
              SizedBox(height: 40), // Space between form and buttons
            ],
          ),
        ),
      ),
    );
  }
}
