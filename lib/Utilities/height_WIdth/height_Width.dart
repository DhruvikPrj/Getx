import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidth extends StatefulWidget {
  const HeightWidth({super.key});

  @override
  State<HeightWidth> createState() => _HeightWidthState();
}

class _HeightWidthState extends State<HeightWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GetX Height tutorial"),
        ),
        body: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 1,
              height: Get.height * .3, //GetX Height
              width: Get.width * .8, //GetX Width
              color: Colors.amber,
              child: const Center(child: Text("Get X Height/Width")),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 1,
              height: Get.height * .2, //GetX Height
              width: Get.width * .5, //GetX Width
              color: Colors.green,
              child: const Center(child: Text("Get X Height/Width")),
            ),
          ],
        ));
  }
}
