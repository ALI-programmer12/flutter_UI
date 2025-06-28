import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';

class ElevatedTrailingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ElevatedTrailingButton({
    super.key,
    required this.onPressed,
    required this.text

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88,
      height: 35,
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
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
