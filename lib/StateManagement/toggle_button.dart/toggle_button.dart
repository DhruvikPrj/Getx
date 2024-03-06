import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateManagement/toggle_button.dart/toggle_controller.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  // bool isOn = false;
  final ToggleController toggle = Get.put(ToggleController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        title: const Text("toggle button with GetX"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("change Notification"),
          Obx(() => Switch(
              value: toggle.isOn.value,
              onChanged: (value) {
                if (value == true) {
                  ThemeData.dark();
                  print("changed");
                }
                toggle.isOn.value = value;
              }))
        ],
      ),
    );
  }
}
