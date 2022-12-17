import 'package:flutter/material.dart';
import 'package:gameon/Screens/groundListPage.dart';

class Dates extends StatelessWidget {
  const Dates({
    Key? key,
    this.background = const Color(0xFFE5E5E5),
    this.textColor = Colors.black,
    required this.date,
    required this.day,
  }) : super(key: key);
  final Color background;
  final Color textColor;
  final String date;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: date == GroundListPage.selectedDate.toString()
            ? Colors.teal
            : background,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Jan",
            style: TextStyle(
              fontSize: 15,
              color: date == GroundListPage.selectedDate.toString()
                  ? Colors.white
                  : textColor,
            ),
          ),
          Text(
            "0$date",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: date == GroundListPage.selectedDate.toString()
                  ? Colors.white
                  : textColor,
            ),
          ),
          Text(
            "$day",
            style: TextStyle(
              fontSize: 15,
              color: date == GroundListPage.selectedDate.toString()
                  ? Colors.white
                  : textColor,
            ),
          ),
        ],
      ),
    );
  }
}
