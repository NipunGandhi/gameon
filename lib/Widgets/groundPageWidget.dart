import "package:flutter/material.dart";
import 'package:gameon/Widgets/TimeButtonWidget.dart';

class GroundPageWidget extends StatelessWidget {
  const GroundPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 17, right: 15),
      padding: const EdgeInsets.only(left: 15, bottom: 10, right: 10, top: 17),
      height: 290,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://wisden.com/wp-content/uploads/2021/01/GettyImages-468776434-e1610533327422-980x530.jpg",
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
                  const Text("20 Over"),
                  Row(
                    children: const [
                      TimingButton(
                        time: '10:00 am',
                      ),
                      TimingButton(
                        time: '1:00 pm',
                        borderColor: Colors.grey,
                        timeColor: Colors.grey,
                        boxColor: Colors.white,
                      ),
                      TimingButton(
                        time: '4:00 pm',
                      ),
                    ],
                  ),
                  const Text("30 Over"),
                  Row(
                    children: const [
                      TimingButton(
                        timeColor: Colors.red,
                        borderColor: Colors.red,
                        boxColor: Colors.white,
                        time: '2:00 pm',
                      ),
                      TimingButton(
                        time: '4:00 pm',
                        borderColor: Colors.grey,
                        timeColor: Colors.grey,
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
                children: const [
                  Text(
                    "Wankhede International Cricket Stadium",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Maharashtra, India",
                    style: TextStyle(
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
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.explore_outlined,
                        color: Color(0xFF088F81),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Navigate",
                        style: TextStyle(
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