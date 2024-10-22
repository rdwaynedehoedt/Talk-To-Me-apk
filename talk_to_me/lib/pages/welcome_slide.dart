import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeSlides extends StatefulWidget {
  @override
  _WelcomeSlidesState createState() => _WelcomeSlidesState();
}

String currentSvg = 'assets/images/welcomeslide01.svg';

class _WelcomeSlidesState extends State<WelcomeSlides> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

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
  void _changeSvg(){
    setState(() {
      currentSvg = "assets/images/welcomeslide02.svg";
    });
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
          ),
          // SVG as background
          Positioned.fill(
            child: SvgPicture.asset(
              currentSvg, // Relative path to your SVG asset
              fit: BoxFit.cover, // Fit SVG to fill the available space
              alignment: Alignment.center, // Align the SVG properly
            ),
          ),

          // Button Icon with the specified position and style
          Positioned(
            left: (MediaQuery.of(context).size.width / 2)- 40, // Left position from your provided CSS
            top: 710, // Top position from your provided CSS
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFF4B3425), // Mindful Brown/80 background color
                borderRadius: BorderRadius.circular(1000), // Circular button
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.white), // Arrow icon (replace with custom if needed)
                  onPressed: _changeSvg,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
