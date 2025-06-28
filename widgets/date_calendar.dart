import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';

class DateCalendar extends StatelessWidget {
  final String dayText;

  const DateCalendar({super.key, required this.dayText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.calendar_today_outlined,
          size: 60,
          color: Color(0xffe0e4e5),
        ),
        Positioned(
          bottom: 2,
          left: 18,
          child: Text(
            dayText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kLightGreyColor,
            ),
          ),
        ),
      ],
    );
  }
}
