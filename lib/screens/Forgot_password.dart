import 'package:flutter/material.dart';
import '../widgets/custom_inputField.dart';
import '../widgets/custom_button.dart'; // Ensure CustomButton is imported

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ✅ Title
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              // ✅ Password Input
              CustomInputField(
                label: 'Password',
                hintText: 'Enter new password',
                controller: passwordController,
                obscureText: true,
                suffixIcon: true,
              ),
              SizedBox(height: screenHeight * 0.02),

              // ✅ Confirm Password Input
              CustomInputField(
                label: 'Confirm Password',
                hintText: 'Re-enter new password',
                controller: confirmPasswordController,
                obscureText: true,
                suffixIcon: true,
              ),
              SizedBox(height: screenHeight * 0.04),

              // ✅ Sign Up Button
              SizedBox(
                width: screenWidth * 0.78,
                child: CustomButton(
                  label: 'Reset Password',
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
