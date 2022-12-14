import "package:flutter/material.dart";
import 'package:gameon/Screens/otpPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              height: a.size.height + -280 + a.viewPadding.top,
              width: double.infinity,
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
                children: [
                  const Text("Hi!"),
                  const Text("Let's get started"),
                  const Text("Enter Phone Number"),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, OTPScreen.name);
                    },
                    child: const Text("Get OTP"),
                  ),
                  const Text("Have a Pin?"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
