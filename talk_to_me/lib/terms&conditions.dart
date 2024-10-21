import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'welcome_screen.dart';
import 'Sign_up_page.dart';

class TandC extends StatefulWidget {
  @override
  _TandC createState() => _TandC();
}

class _TandC extends State<TandC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4F2), // Background color from your design
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Back Button

              // Title Text
              Center(
                child: Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Terms and Conditions Text
              Text(
                'Welcome to Talk to Me (the “Chatbot”). Please read the following terms and conditions carefully before using the Chatbot. By accessing or using the Chatbot, you agree to comply with and be bound by these terms and conditions.\n\n'
                    '1. Purpose of the Chatbot\n\n'
                    'Talk to Me is designed to provide general wellness and mental health support, including mindfulness exercises, relaxation techniques, and basic coping strategies. The Chatbot does not provide professional medical advice, diagnosis, or treatment.\n\n'
                    '2. Not a Substitute for Professional Help\n\n'
                    'Talk to Me is not intended to replace professional therapy, counseling, or mental health services. If you are experiencing a mental health crisis or require immediate assistance, please contact a qualified mental health professional or emergency services.\n\n'
                    '3. User Responsibilities\n\n'
                    'By using Talk to Me, you acknowledge and agree that:\n\n'
                    '• You are at least [Minimum Age Requirement] years old or have parental/guardian consent to use the Chatbot.\n'
                    '• You will not use the Chatbot in a manner that is unlawful, harmful, or violates any applicable laws or regulations.\n'
                    '• You understand that any advice or information provided by the Chatbot is intended for general well-being and should not be relied upon as professional guidance.\n\n'
                    '4. Confidentiality and Privacy\n\n'
                    'We respect your privacy. While the Chatbot may store and process certain data to improve your experience, we do not collect any personally identifiable information (PII) without your consent. However, the information shared in conversations may be stored for improving the Chatbot’s functionality. Please review our Privacy Policy for more details.\n\n'
                    '5. Limitations of Liability\n\n'
                    'Talk to Me is provided on an “as is” basis. We make no warranties or representations regarding the accuracy, reliability, or completeness of the information provided by the Chatbot. We shall not be held liable for any damages, losses, or harm arising from the use of the Chatbot.\n\n'
                    '6. Modifications to the Terms\n\n'
                    'We may revise these terms and conditions from time to time. Any changes will be posted on this page with an updated effective date. Continued use of the Chatbot after such changes constitutes your acceptance of the new terms.\n\n'
                    '7. Governing Law\n\n'
                    'These terms and conditions are governed by and construed in accordance with the laws of SRI LANKA. Any disputes arising from the use of Talk to Me shall be resolved in accordance with the jurisdiction of Sri Lanka.',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),

              // Agree Button
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                        settings: RouteSettings(arguments: {'termsAccepted': true}),
                      ),
                          (route) => false,
                    );
                  },
                  color: Color(0xFF2AB2A3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  child: Text(
                    'I Agree',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
