import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';

class InfoCardText extends StatefulWidget {
  final String text;
  final int trimLines;

  const InfoCardText({
    super.key,
    required this.text,
    this.trimLines = 3,
  });

  @override
  State<InfoCardText> createState() => _InfoCardTextState();
}

class _InfoCardTextState extends State<InfoCardText> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kCardBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _expanded
              ? SizedBox(
            height: 80, // You can increase this if needed
            child: SingleChildScrollView(
              child: Text(
                widget.text,
                style: kSubtitleTextStyle,
              ),
            ),
          )
              : Text(
            widget.text,
            maxLines: widget.trimLines,
            overflow: TextOverflow.ellipsis,
            style: kSubtitleTextStyle,
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => setState(() => _expanded = !_expanded),
            child: Text(
              _expanded ? 'Read Less' : 'Read More...',
              style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
