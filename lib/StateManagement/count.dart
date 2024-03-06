import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateManagement/count_controller.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  //var count = 0;

//Dependancy Injection. 
  final CountController countController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Obx(
          //Observes the value and intialize it.
          () {
            print("Only This Widget Builds");
            return Text(
              countController.count.toString(),
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countController.incrementCount();
          //   count++;
          //   setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
