import 'package:flutter/material.dart';

class TimingButton extends StatelessWidget {
  const TimingButton({
    Key? key,
    required this.time,
    this.timeColor = Colors.white,
    this.boxColor = const Color(0xFF088F81),
    this.borderColor = const Color(0xFF088F81),
  }) : super(key: key);

  final String time;
  final Color timeColor;
  final Color boxColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 30,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        color: boxColor,
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        time,
        style: TextStyle(
          color: timeColor,
        ),
      )),
    );
  }
}
