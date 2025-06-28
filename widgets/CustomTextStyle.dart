import 'package:flutter/material.dart';

class CustomStyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const CustomStyledText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 23,
    this.fontWeight = FontWeight.w700
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22),
      margin: const EdgeInsets.only(left: 10),
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

