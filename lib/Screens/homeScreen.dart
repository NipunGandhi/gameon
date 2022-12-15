import "package:flutter/material.dart";
import 'package:gameon/Screens/otpPage.dart';
import 'package:gameon/Screens/pinPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller1.text = "+91";
    var a = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: a.size.height / 3.10,
              width: double.infinity,
              child: Image.asset(
                "assets/images/img_1.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height:
                  a.size.height + -(a.size.height / 3.10) + a.viewPadding.top,
              width: double.infinity,
              margin: EdgeInsets.only(top: (a.size.height / 3.4765625)),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Column(
                          children: const [
                            Text(
                              "Hi!",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Let's Get Started",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF088F81),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: a.size.height / 32,
                          ),
                          const Text(
                            "Enter Phone Number",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 32,
                                  child: TextField(
                                    controller: controller1,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                    child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "9900265566",
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: a.size.height / 15),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 130,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, OTPScreen.name);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xff088F81), // Background color
                            ),
                            child: const Text("Get OTP"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, PinPage.name);
                          },
                          child: const Text(
                            "Have a Pin?",
                            style: TextStyle(
                              color: Color(0xFF088F81),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
