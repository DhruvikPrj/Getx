import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:getx/Navigation_GetX/screen2.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Screen 3"),
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
                Get.back();
              },
              child: const Text("Back to Home Screen"),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back to screen 2"),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: const Text("Back to screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
