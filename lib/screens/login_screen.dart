import 'package:doctore_app/widgets/custom_inputField.dart';
import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../widgets/custom_button.dart';
import 'signup_screen.dart'; // Import SignupScreen

class LoginScreen extends StatelessWidget {
    LoginScreen({super.key});
   TextEditingController Passwordcontroller=TextEditingController();
    TextEditingController Confirmpasswordcontroller=TextEditingController();

    @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
                children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                  Container(
                    width: 370,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Light grey for better UI
                      borderRadius: BorderRadius.circular(3), // Rounded corners
                    ),

                    child: Column(
                       children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: CustomInputField(label: 'Password', hintText: '', controller: Passwordcontroller),
                        ),
                        SizedBox(height: 10,),
                        CustomInputField(label: 'ConfirmPassword', hintText: '', controller: Confirmpasswordcontroller),
                         Padding(
                           padding: const EdgeInsets.only(top:20,left: 190.0),
                           child: Text(
                             'Forget Password',
                             style: TextStyle(fontSize: 16, color: Color(0xFF898585FF)),
                           ),
                         ),
                         SizedBox(height: 13,),
                         SizedBox(
                           width:320 ,
                           child: CustomButton(
                             label: 'Sign Up',
                             onPressed: () {
                               Navigator.pushNamed(context, '/phone_auth');
                             },
                           ),
                         ),
                         SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Expanded(
                               child: Divider(
                                 color: Colors.grey,
                                 thickness: 1,
                                 indent: screenWidth * 0.075,
                                 endIndent: screenWidth * 0.02,
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                               child: const Text('Or Continue With'),
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
                         Padding(
                           padding: const EdgeInsets.only(top: 40.0),
                           child: Image(
                             image: AssetImage('assets/google.png'),
                           width: 50,
                           height: 50,),
                         )

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
