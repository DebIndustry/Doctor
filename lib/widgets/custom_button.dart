import 'package:doctore_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double width;
  final double height;

  const CustomButton({
    required this.label,
    required this.onPressed,
    this.color =AppColors.primaryColor,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.width = 376.0,
    this.height = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,  // Set background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),  // Set border radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 18,  // Set font size
          ),
        ),
      ),
    );
  }
}
