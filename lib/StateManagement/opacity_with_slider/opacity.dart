import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateManagement/opacity_with_slider/opacity_controller.dart';

class ChangeOpacity extends StatefulWidget {
  ChangeOpacity({super.key});

  @override
  State<ChangeOpacity> createState() => _ChangeOpacityState();
}

class _ChangeOpacityState extends State<ChangeOpacity> {
  // double opacity = .4;

  final OpacityController opacityControll = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Opacity"),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: Get.height * .2,
              width: Get.width * .3,
              color: Colors.blue.withOpacity(opacityControll.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: opacityControll.opacity.value,
              onChanged: (value) {
                opacityControll.setOpacity(value);
              }))
        ],
      ),
    );
  }
}
