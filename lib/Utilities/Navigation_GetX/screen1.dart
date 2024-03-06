import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx/Navigation_GetX/screen2.dart';
import 'package:getx/Utilities/Navigation_GetX/screen3.dart';

// ignore: must_be_immutable
class Screen1 extends StatefulWidget {
  var name;
  Screen1({super.key, required this.name});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Screen 1"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Navigate to Home"),
            ),
            TextButton(
              onPressed: () {
                //Get.to(const Screen2());
                Get.toNamed('/Screen2', arguments: ["//GetX Routs :"]);
              },
              child: Text("Navigate to screen 2  ${widget.name}"),
            ),
            TextButton(
              onPressed: () {
                Get.to(const Screen3());
              },
              child: const Text("Navigate to screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
