import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Practice"),
      ),
      body: const Column(
        children: [
          Text(''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
              barBlur: 0.5,
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor:
                  const Color.fromARGB(255, 37, 2, 106).withOpacity(.05),
              "welcome",
              "Mr. Dhruvik");
        },
        child: const Icon(Icons.star),
      ),
    );
  }
}
