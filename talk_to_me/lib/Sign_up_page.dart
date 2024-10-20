import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'Sign_in_page.dart';
import 'welcome_screen.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4F2), // Background color from your design
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0), // Adjust padding for more space
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Back Button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/backbutton.svg',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomeScreen())
                    );
                  },
                ),
              ),
              SizedBox(height: 50), // More space after the back button

              // Title Text
              Center(
                child: Text(
                  'Sign In To Talk To Me',
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: 28, // Slightly larger font size for the title
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50), // Increased space between title and fields

              // Email Field
              Text(
                'Email Address',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(16), // Padding to match icon positioning
                    child: SvgPicture.string(
                      '''
                      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="3" y="5" width="18" height="14" rx="4" stroke="#4B3425" stroke-width="2" stroke-linejoin="round"/>
                        <path d="M19 5C19 5.91925 18.8189 6.8295 18.4672 7.67878C18.1154 8.52806 17.5998 9.29974 16.9497 9.94975C16.2997 10.5998 15.5281 11.1154 14.6788 11.4672C13.8295 11.8189 12.9193 12 12 12C11.0807 12 10.1705 11.8189 9.32122 11.4672C8.47194 11.1154 7.70026 10.5998 7.05025 9.94975C6.40024 9.29974 5.88463 8.52806 5.53284 7.67878C5.18106 6.8295 5 5.91925 5 5" stroke="#4B3425" stroke-width="2" stroke-linejoin="round"/>
                      </svg>
                      ''',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    letterSpacing: -0.01,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16), // Reduced border radius for a clean look
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.6), // Serenity Green/50 border color
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30), // More space between form fields

              // Password Field
              Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(16), // Padding to match icon positioning
                    child: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      size: 24,
                    ),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color.fromRGBO(31, 22, 15, 0.33),
                    letterSpacing: -0.01,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20), // More space before Sign In Button

              SizedBox(height: 40), // More space before Sign In Button
              // Sign In Button
              MaterialButton(
                onPressed: () {},
                color: Color(0xFF2AB2A3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16), // Larger padding for more prominence
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Google, Microsoft, Apple Sign In Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/microsoft_icon.svg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/google_icon.svg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/apple_icon.svg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), // Add more space below the buttons

              // RichText for "Don’t have an account? Get Start."
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sing in.',
                        style: TextStyle(
                          color: Color(0xFF2AB2A3), // Color for "Get Start"
                          decoration: TextDecoration.underline, // Underline for the link
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInPage()), // Update with the correct page name
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
