import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateManagement/image_picker/image_controller.dart';

class ShowImage extends StatefulWidget {
  const ShowImage({super.key});

  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  final MyImagePicker imageController = Get.put(MyImagePicker());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Image"),
      ),
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 50,
                  backgroundImage: imageController.imagePath.isNotEmpty
                      ? FileImage(File(imageController.imagePath.toString()))
                      : null),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    imageController.getImage();
                  },
                  child: const Text("Pick Image"))
            ],
          )),
    );
  }
}
