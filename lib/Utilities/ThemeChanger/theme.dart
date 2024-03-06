import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/Utilities/Dialog_SnackBar/home_screen.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Change"),
      ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    textCancel: "Cancle it",
                    onCancel: () {
                      Get.back();
                    },
                    buttonColor: const Color.fromARGB(255, 5, 17, 155),
                    contentPadding: const EdgeInsets.all(12));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Get X Bottom Shit"),
              subtitle: const Text("This is Bottom Shit"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 192, 205, 255),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          print("Light");
                          Get.changeTheme(
                            ThemeData.light(),
                          );
                        },
                        leading: const Icon(Icons.light),
                        title: const Text("Light Theme"),
                      ),
                      ListTile(
                        onTap: () {
                          print("Dark");
                          Get.changeTheme(ThemeData.dark());
                        },
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark Theme"),
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
