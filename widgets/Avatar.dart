import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;

  const ProfileAvatar({
    super.key,
    required this.imagePath,
    this.radius = 40,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: ClipOval(
        child: Image.asset(
          imagePath,
          width: radius,   // Ensure it fills the circle
          height: radius * 2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
