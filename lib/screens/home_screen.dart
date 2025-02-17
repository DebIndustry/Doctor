import 'package:doctore_app/core/theme/app_colors.dart';
import 'package:doctore_app/widgets/custom_inputField.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04, // 4% padding on sides
            vertical: screenHeight * 0.02, // 2% padding on top/bottom
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 58.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // OR Divider Row (Fully Responsive)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: screenWidth * 0.075, // 8% of screen width
                        endIndent: screenWidth * 0.02, // 2% of screen width
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                      child: const Text('OR'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: screenWidth * 0.02, // 2% of screen width
                        endIndent: screenWidth * 0.075, // 8% of screen width
                      ),
                    ),
                  ],
                ),

                SizedBox(height: screenHeight * 0.04),
                 SizedBox(
                  width: screenWidth * 0.99,
                  child: Column(
                    children: [
                      CustomInputField(label: 'Email', hintText: '', controller: emailcontroller
                      ,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      CustomInputField(label: 'Username', hintText: '', controller: usernamecontroller),
                      SizedBox(height: screenHeight * 0.02),
                      CustomInputField(
                          label: 'Password', hintText: '', controller: passwordcontroller,
                        obscureText: true,
                        suffixIcon: true,

                      ),
                      SizedBox(height: screenHeight * 0.02),
                      CustomInputField(label: 'Confirm Password', hintText: '', controller: confirmpasswordcontroller,
                        obscureText: true,
                        suffixIcon: true,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.04),

                 SizedBox(
                  width: screenWidth * 0.78,
                  child: CustomButton(
                    label: 'Sign Up',
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                // Login Text
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Do you have an Account? ',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(color: AppColors.Textsky, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
