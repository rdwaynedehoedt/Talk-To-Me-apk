import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeSlides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(
            color: Color(0xFFE5EAD7),
          ),
          // SVG as background decoration
          Positioned.fill(
            child: SvgPicture.string(
              '''
              <svg width="375" height="734" viewBox="0 0 375 734" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M-16.7751 55.5665C-22.7055 53.1283 -26.2316 45.9221 -24.6021 39.664C-22.9459 33.4059 -16.3209 28.9629 -9.98985 29.857C-6.73081 30.3175 -3.79233 31.9701 -0.933989 33.5955C2.69904 35.6545 6.33208 37.7405 9.96511 39.7994C0.909243 36.5756 -3.47176 25.2514 -1.49497 15.7153C-0.0524414 8.86124 4.56899 2.30516 11.2474 0.517139C16.6969 -0.945788 22.4937 0.896418 27.4891 3.52427C43.0097 11.5975 53.882 26.4705 63.1249 41.4791C60.2398 37.4425 63.4455 31.2386 68.1203 29.6131C72.7952 28.0147 77.9241 29.6944 82.3319 31.9159C92.1624 36.9007 100.337 46.4368 106 56L-16.7751 55.5665Z" fill="#F2F5EB"/>
              <!-- Add more paths if needed -->
              </svg>
              ''',
              fit: BoxFit.cover,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}
