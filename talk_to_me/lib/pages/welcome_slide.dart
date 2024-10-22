import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeSlides extends StatefulWidget {
  @override
  _WelcomeSlidesState createState() => _WelcomeSlidesState();
}

class _WelcomeSlidesState extends State<WelcomeSlides> with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Declare as 'late' to initialize later
  late Animation<Offset> _slideAnimation; // Declare as 'late' to initialize later

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller with the duration of 800ms
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    // Define the slide animation that moves the content from bottom to top
    _slideAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0), // Start from bottom
      end: Offset.zero, // End at the normal position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Gentle curve for smooth animation
    ));

    // Start the animation when the page is built
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose of the controller to free up resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(
            color: Color(0xFFE5EAD7), // Set the background color to #E5EAD7
          ),
          // SVG as background
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/welcomeslide01.svg', // Relative path to your SVG asset
              fit: BoxFit.cover, // Fit SVG to fill the available space
              alignment: Alignment.center, // Align the SVG properly
            ),
          ),


        ],
      ),
    );
  }
}
