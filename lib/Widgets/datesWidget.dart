import 'package:flutter/material.dart';

class Dates extends StatelessWidget {
  const Dates({
    Key? key,
    this.background = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);
  final Color background;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: background,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Jan",
            style: TextStyle(fontSize: 15, color: textColor),
          ),
          Text(
            "03",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: textColor),
          ),
          Text(
            "Sun",
            style: TextStyle(fontSize: 15, color: textColor),
          ),
        ],
      ),
    );
  }
}
