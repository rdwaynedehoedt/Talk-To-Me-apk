import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeSlides extends StatefulWidget {
  @override
  _WelcomeSlidesState createState() => _WelcomeSlidesState();
}

class _WelcomeSlidesState extends State<WelcomeSlides> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  //array for the svgs
  List<String> svgList =[
    'assets/images/welcomeslide01.svg',
    'assets/images/welcomeslide02.svg',
    'assets/images/welcomeslide03.svg',
    'assets/images/welcomeslide04.svg',
  ];

  int currentIndex = 0;

  void _changeSvg(){
    setState(() {
      currentIndex = (currentIndex + 1) % svgList.length; // Cycle through the SVGs
    });
  }

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
    // Get screen size for responsive layout
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(),

          // SVG as background
          Positioned.fill(
            child: SvgPicture.asset(
              svgList[currentIndex], // Dynamic SVG switching
              fit: BoxFit.cover, // Make sure SVG scales properly
              alignment: Alignment.center,
            ),
          ),

          // Button Icon with responsive position and size
          Positioned(
            left: screenWidth * 0.5 - 40, // Center the button horizontally (half of button width is 40)
            top: screenHeight * 0.85, // Adjust button to 85% of the screen height
            child: Container(
              width: screenWidth * 0.2, // Make the button 20% of the screen width (adjustable)
              height: screenWidth * 0.2, // Keep it square, same as width
              decoration: BoxDecoration(
                color: Color(0xFF4B3425), // Button color
                borderRadius: BorderRadius.circular(1000), // Circular button
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                  iconSize:screenWidth * 0.08, // Adjust icon size relative to screen width
                  onPressed: _changeSvg, // Change the SVG on button press
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
