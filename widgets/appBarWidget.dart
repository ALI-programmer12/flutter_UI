import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';

class CustomImageAppBar extends StatelessWidget {
  final String imagePath;
  final String overlayText;
  final double height;

  const CustomImageAppBar({
    super.key,
    required this.imagePath,
    required this.overlayText,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Image
          Image.asset(
            appBarImgPath,
            width: double.infinity,
            height: height,
            fit: BoxFit.cover,
          ),

          // Shadow Overlay
          Container(
            width: double.infinity,
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: kShadowColors,
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ),
            ),
          ),

          // Overlay Text
          Positioned(
            bottom: 16,
            left: 16,
            child: Text(overlayText, style: kAppBarOverlayTextStyle),
          ),
        ],
      ),
    );
  }
}
