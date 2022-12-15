import "package:flutter/material.dart";

import '../Screens/groundDetails.dart';
import '../Widgets/datesWidget.dart';
import '../Widgets/groundPageWidget.dart';

class GroundListPage extends StatelessWidget {
  const GroundListPage({Key? key}) : super(key: key);
  static const String name = "GroundListPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
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
        title: const Text("Grounds"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 85,
            margin: const EdgeInsets.only(top: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Dates(),
                Dates(),
                Dates(
                  background: Color(0xFF088F81),
                  textColor: Colors.white,
                ),
                Dates(),
                Dates(),
                Dates(),
                Dates(),
                Dates(),
                Dates(),
                Dates(),
                Dates(),
                Dates(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
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
                        Text("Maharashtra, India"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Change",
                          style: TextStyle(
                            color: Color(0xFF088F81),
                          ),
                        ),
                        Text(
                          " >",
                          style: TextStyle(
                            color: Color(0xFF088F81),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 24,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 20,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    child: const GroundPageWidget(),
                    onTap: () {
                      Navigator.pushNamed(context, GroundDetails.name);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    child: const GroundPageWidget(),
                    onTap: () {
                      Navigator.pushNamed(context, GroundDetails.name);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    child: const GroundPageWidget(),
                    onTap: () {
                      Navigator.pushNamed(context, GroundDetails.name);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
