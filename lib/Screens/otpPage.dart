import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:gameon/Screens/groundListPage.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);
  static const String name = "OTPScreen";

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    controller1.clear();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();
    TextEditingController controller4 = TextEditingController();
    var a = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 280,
              width: double.infinity,
              child: Image.asset(
                "assets/images/img_1.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: a.size.height + -280 + a.viewPadding.top,
              margin: const EdgeInsets.only(top: 256),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Enter OTP",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff033934),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff088F81),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 50,
                          height: 50,
                          child: Center(
                            child: TextFormField(
                              obscuringCharacter: '*',
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xff088F81),
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: controller1,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff088F81),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 50,
                          height: 50,
                          child: Center(
                            child: TextFormField(
                              obscuringCharacter: '*',
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xff088F81),
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: controller2,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff088F81),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 50,
                          height: 50,
                          child: Center(
                            child: TextFormField(
                              obscuringCharacter: '*',
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xff088F81),
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: controller3,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff088F81),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 50,
                          height: 50,
                          child: Center(
                            child: TextFormField(
                              obscuringCharacter: '*',
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xff088F81),
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: controller4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "OTP sent to 7042082109",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff088F81),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.watch_later,
                        color: Color(0xff088F81),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "00:59",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff088F81),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff088F81), // Background color
                      ),
                      onPressed: () {
                        if (controller1.text == "1" &&
                            controller2.text == "2" &&
                            controller3.text == "3" &&
                            controller4.text == "4") {
                          Navigator.pushReplacementNamed(
                            context,
                            GroundListPage.name,
                          );
                        } else if (controller1.text.isEmpty ||
                            controller2.text.isEmpty ||
                            controller3.text.isEmpty ||
                            controller4.text.isEmpty) {
                          setState(() {
                            controller1.clear();
                            controller2.clear();
                            controller3.clear();
                            controller4.clear();
                          });
                          final snackBar = SnackBar(
                            content: const Text('Enter the OTP first'),
                            backgroundColor: (Colors.black),
                            action: SnackBarAction(
                              label: 'Dismiss',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          setState(() {
                            controller1.clear();
                            controller2.clear();
                            controller3.clear();
                            controller4.clear();
                          });
                          final snackBar = SnackBar(
                            content: const Text('Wrong OTP'),
                            backgroundColor: (Colors.black),
                            action: SnackBarAction(
                              label: 'Dismiss',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: const Text("Login"),
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
