import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widgets/custom_button.dart';

class PhoneAuthScreen extends StatefulWidget {
  @override
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.07, vertical: screenHeight * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ✅ Logo
                  Image.asset(
                    'assets/mainlogo.png',
                    width: screenWidth * 0.6, // Responsive width
                    height: screenHeight * 0.3, // Responsive height
                  ),

                  SizedBox(height: screenHeight * 0.02), // Dynamic spacing

                   IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Number',
                        hintStyle: TextStyle(color: Colors.white),
                       fillColor: Colors.grey[300],
                      filled: true,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print("Full Number: ${phone.completeNumber}");
                    },
                  ),

                  SizedBox(height: screenHeight * 0.05), // Dynamic spacing

                  // ✅ Sign Up Button
                  SizedBox(
                    width: screenWidth * 0.6,
                    child: CustomButton(
                      label: ' Get Otp',
                      onPressed: () {
                        Navigator.pushNamed(context, '/otp');
                      },
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.25), // Dynamic spacing

                  // ✅ Privacy Policy & Terms
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                    child: Text.rich(
                      TextSpan(
                        text: "Read our ",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Privacy Policy ",
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(text: "and\n"),
                          TextSpan(
                            text: "Terms and Conditions",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
