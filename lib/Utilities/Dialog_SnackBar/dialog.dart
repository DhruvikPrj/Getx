import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/Utilities/Dialog_SnackBar/home_screen.dart';

class DialogueBox extends StatefulWidget {
  const DialogueBox({super.key});

  @override
  State<DialogueBox> createState() => _DialogueBoxState();
}

class _DialogueBoxState extends State<DialogueBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: const Text("Hello"),
              subtitle: const Text("This is ListTile"),
              onTap: () {
                Get.defaultDialog(
                    title: "Alert",
                    middleText:
                        "This is Default Dialogue.", // cannot more than 3 line. instead of use: content
                    textConfirm: "Accept it",
                    onConfirm: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const HomeScreen(),
                      //     ));
                      Get.to(const HomeScreen()); //Navigation in GetX
                    },
                    textCancel: "Cancle it",
                    onCancel: () {
                      // Navigator.pop(context);
                      //Using GetX
                      Get.back();
                    },
                    // confirm: TextButton(
                    //   onPressed: () {},
                    //   child: const Text("Ok"),
                    // ),
                    // cancel: TextButton(
                    //   onPressed: () {},
                    //   child: const Text("Cancle"),
                    // ),
                    buttonColor: const Color.fromARGB(255, 5, 17, 155),
                    contentPadding: const EdgeInsets.all(12));
              },
            ),
          )
        ],
      ),
    );
  }
}
