import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../widgets/custom_button.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.07, vertical: screenHeight * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ✅ Logo
                    Image.asset(
                      'assets/mainlogo.png',
                      width: screenWidth * 0.6,
                      height: screenHeight * 0.3, // Responsive height
                    ),

                    SizedBox(height: screenHeight * 0.03),


                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.03), // Adjust value as needed
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enter your OTP",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )

                    ,

                    SizedBox(height: screenHeight * 0.02),

                    // ✅ OTP Input Field
                    Pinput(
                      length: 6,
                      defaultPinTheme: PinTheme(
                        width: screenWidth * 0.12, // Responsive OTP box size
                        height: screenHeight * 0.07,
                        textStyle: TextStyle(fontSize: screenWidth * 0.05),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.015),

                    // ✅ Timer
                    Text(
                      "59 : 00",
                      style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.red),
                    ),

                    SizedBox(height: screenHeight * 0.03),

                    SizedBox(
                      width: screenWidth * 0.6,
                      child: CustomButton(
                        label: ' Get Otp',
                        onPressed: () {
                          Navigator.pushNamed(context, '/forgetpassword');
                        },
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.03),

                    // ✅ Change Number & Resend OTP
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Change number",
                            style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.03),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(color: Colors.blue, fontSize: screenWidth * 0.03),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: screenHeight * 0.15),

                    // ✅ Privacy Policy & Terms
                    Text.rich(
                      TextSpan(
                        text: "Read our ",
                        style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "privacy policy ",
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(text: "and\n"),
                          TextSpan(
                            text: "Terms and conditions",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
