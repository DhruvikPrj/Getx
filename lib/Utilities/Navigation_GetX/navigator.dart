import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Utilities/Navigation_GetX/screen1.dart';
import 'package:getx/Utilities/Navigation_GetX/screen2.dart';
import 'package:getx/Utilities/Navigation_GetX/screen3.dart';

class GetXNavigator extends StatefulWidget {
  const GetXNavigator({super.key});

  @override
  State<GetXNavigator> createState() => _GetXNavigatorState();
}

class _GetXNavigatorState extends State<GetXNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.to(Screen1(name: "Dhruvik"));
            },
            child: const Text("Navigate to screen 1"),
          ),
          TextButton(
            onPressed: () {
              Get.to(const Screen2());
            },
            child: const Text("Navigate to screen 2"),
          ),
          TextButton(
            onPressed: () {
              Get.to(const Screen3());
            },
            child: const Text("Navigate to screen 3"),
          ),
        ],
      ),
    );
  }
}
