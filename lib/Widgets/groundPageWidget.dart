import "package:flutter/material.dart";
import 'package:gameon/Widgets/TimeButtonWidget.dart';

class GroundPageWidget extends StatelessWidget {
  const GroundPageWidget({
    Key? key,
    required this.name,
    required this.location,
    required this.text,
    required this.imagelink,
  }) : super(key: key);

  final String name;
  final String location;
  final String text;
  final String imagelink;
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 17, right: 15),
      padding: const EdgeInsets.only(left: 15, bottom: 10, right: 10, top: 17),
      height: 290,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Colors.white70,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "$imagelink",
                  height: 135,
                  width: 106,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    " 20 Over",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      TimingButton(
                        time: '10:00 am',
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TimingButton(
                        time: '1:00 pm',
                        borderColor: Colors.grey,
                        textStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        boxColor: Colors.white,
                      ),
                      TimingButton(
                        time: '4:00 pm',
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    " 30 Over",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      TimingButton(
                        borderColor: Colors.red,
                        boxColor: Colors.white,
                        time: '2:00 pm',
                        textStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      TimingButton(
                        time: '4:00 pm',
                        borderColor: Colors.grey,
                        textStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        boxColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: a.height / 43.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "$location",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 24,
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Pitch type :",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Mat",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.explore_outlined,
                        color: Color(0xFF088F81),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$text",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF088F81),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
