import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Utilities/Navigation_GetX/screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Screen 2 "),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: const Text("Back to Home Screen"),
            ),
            TextButton(
              onPressed: () {
                Get.to(Screen1(name: 'Hem'));
              },
              child: const Text("Back to screen 1"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Navigate to screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
