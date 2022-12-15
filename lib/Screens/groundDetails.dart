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
                const Center(child: Text("Sunday, 21 June 2021")),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://wisden.com/wp-content/uploads/2021/01/GettyImages-468776434-e1610533327422-980x530.jpg",
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
                        Icon(Icons.explore_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Navigate"),
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
                        Icon(Icons.explore_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Navigate",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
            height: 280,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("For 20 overs"),
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
                        Text("Team 1"),
                        Text("Mumbai Indians"),
                        Text("Booked"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Team 2"),
                        Text("Available"),
                        Text("Available"),
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
                  children: const [
                    Text("Bat Provided"),
                    Text("Umpire Provided"),
                    Text("Ball Detail"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("₹ 3000"),
                    Text("Book Now"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            padding:
                const EdgeInsets.only(left: 15, bottom: 10, right: 15, top: 10),
            height: 280,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("For 30 overs"),
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
                        Text("Team 1"),
                        Text("Mumbai Indians"),
                        Text("Booked"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Team 2"),
                        Text("Available"),
                        Text("Available"),
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
                  children: const [
                    Text("Bat Provided"),
                    Text("Umpire Provided"),
                    Text("Ball Detail"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("₹ 3000"),
                    Text("Book Now"),
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
