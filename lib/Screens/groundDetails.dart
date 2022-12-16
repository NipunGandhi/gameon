import "package:flutter/material.dart";
import 'package:gameon/Widgets/TimeButtonWidget.dart';

class GroundDetails extends StatelessWidget {
  const GroundDetails({Key? key}) : super(key: key);
  static const String name = "GroundDetails";

  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 65,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF088F81),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        titleSpacing: 0,
        title: const Text("Ground Details"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  "Sunday, 21 June 2021",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/img_2.png",
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Wankhede International Cricket Stadium",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: a.height / 43.5,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF088F81),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Navigate",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF088F81),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Pitch type :"),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Mat",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.wc),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.restaurant),
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
                          "2 Km far.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            padding:
                const EdgeInsets.only(left: 15, bottom: 10, right: 15, top: 10),
            height: 290,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "For 20 overs",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TimingButton(
                      time: '10:00 am',
                      borderColor: Color(0xFF088F81),
                      boxColor: Colors.white,
                      timeColor: Color(0xFF088F81),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Team 1 :",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7FA89C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mumbai Indians",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TimingButton(
                          borderColor: Color(0xFFE6F4F2),
                          boxColor: Color(0xFFE6F4F2),
                          time: "Available",
                          timeColor: Color(0xFF088F81),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Team 2 :",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7FA89C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Available",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TimingButton(
                          borderColor: Color(0xFFE6F4F2),
                          boxColor: Color(0xFFE6F4F2),
                          time: "Available",
                          timeColor: Color(0xFF088F81),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 1,
                    )
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Bat Provided"),
                        Checkbox(
                          activeColor: const Color(0xFFF4F4F4),
                          checkColor: const Color(0xFF088F81),
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Umpire Provided"),
                        Checkbox(
                          activeColor: const Color(0xFFF4F4F4),
                          checkColor: const Color(0xFF088F81),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
                    const Text("Ball Detail"),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "₹ 3000",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF088F81),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TimingButton(
                      time: 'Book Now',
                      height: 40,
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            padding:
                const EdgeInsets.only(left: 15, bottom: 10, right: 15, top: 10),
            height: 290,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "For 30 overs",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TimingButton(
                      time: '3:00 am',
                      borderColor: Color(0xFF088F81),
                      boxColor: Colors.white,
                      timeColor: Color(0xFF088F81),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TimingButton(
                          borderColor: Color(0xFF088F81),
                          boxColor: Color(0xFF088F81),
                          time: "Available",
                          timeColor: Colors.white,
                          width: 80,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizedBox(
                          height: 5,
                        ),
                        TimingButton(
                          borderColor: Color(0xFF088F81),
                          boxColor: Color(0xFF088F81),
                          time: "Available",
                          timeColor: Colors.white,
                          width: 80,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 1,
                    )
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Bat Provided"),
                        Checkbox(
                          activeColor: const Color(0xFFF4F4F4),
                          checkColor: const Color(0xFF088F81),
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Umpire Provided"),
                        Checkbox(
                          activeColor: const Color(0xFFF4F4F4),
                          checkColor: const Color(0xFF088F81),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
                    const Text("Ball Detail"),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "₹ 6000",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF088F81),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TimingButton(
                      time: 'Book Now',
                      height: 40,
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
