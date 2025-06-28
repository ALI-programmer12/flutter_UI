import 'package:flutter/material.dart';
import 'package:my_first_project/constants.dart';
import 'package:my_first_project/widgets/date_calendar.dart';

class DateTimeCard extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final Widget? trailing;

  const DateTimeCard({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    this.trailing
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: kCardBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: leading,
          title: Text(title, style: kDateTimeTextStyle),
          subtitle: Text(
            subtitle,
            style: kSubtitleTextStyle
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}



// Stack(
// children: [
// const Icon(
// Icons.calendar_today_outlined,
// size: 60,
// color: Color(0xffe0e4e5),
// ),
// Positioned(
// bottom: 2,
// left: 18,
// child: Text(
// dayText,
// style: const TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// color: kLightGreyColor,
// ),
// ),
// )
// ],
// ),