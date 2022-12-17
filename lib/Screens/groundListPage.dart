import "package:flutter/material.dart";

import '../Screens/groundDetails.dart';
import '../Widgets/datesWidget.dart';
import '../Widgets/groundPageWidget.dart';

class GroundListPage extends StatefulWidget {
  const GroundListPage({Key? key}) : super(key: key);
  static const String name = "GroundListPage";
  static const List abc = ["Sat", "Sun", "Mon", "Tues", "Wed", "Thur", "Fri"];
  static int selectedDate = 3;

  @override
  State<GroundListPage> createState() => _GroundListPageState();
}

class _GroundListPageState extends State<GroundListPage> {
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
          icon: Image.asset('assets/images/entypo_menu.png'),
        ),
        titleSpacing: 0,
        title: const Text("Grounds"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/Search.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/Filter.png'),
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
              children: [
                for (var i = 1; i < 10; i++)
                  GestureDetector(
                    onTap: () {
                      GroundListPage.selectedDate = i;
                      setState(() {});
                    },
                    child: Dates(
                      date: i.toString(),
                      day: GroundListPage.abc[i % 7],
                    ),
                  ),
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
                    child: const GroundPageWidget(
                      name: 'Wankhede International Cricket Stadium',
                      location: 'Maharashtra, India',
                      text: "Navigate",
                      imagelink: "assets/images/wankhede.png",
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, GroundDetails.name);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    child: const GroundPageWidget(
                      name: 'Narendra Modi Stadium',
                      location: 'Gujarat, Ahmedabad',
                      text: "Only 4 Km far.",
                      imagelink: "assets/images/narendra.png",
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, GroundDetails.name);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    child: const GroundPageWidget(
                      name: 'Jawaharlal Nehru Stadium',
                      location: 'Delhi NCR, Delhi',
                      text: "Only 2 Km far.",
                      imagelink: "assets/images/jawarlal.png",
                    ),
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
