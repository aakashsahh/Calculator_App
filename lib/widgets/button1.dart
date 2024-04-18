import 'package:calculator_provider/constants/colors.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.label,
    this.textColor = Colors.white,
  });
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        backgroundColor: AppColors.secondary2Color,
        radius: 36,
        child: Text(
          label,
          style: TextStyle(color: textColor, fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
