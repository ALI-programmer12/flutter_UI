import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';

class LoginBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const LoginBtn({
    super.key,
    required this.onPressed,
    required this.text

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 16),
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: kElevatedButtonColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18
          ),
        ),

      ),
    );
  }
}
