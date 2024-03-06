import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaliZation extends StatefulWidget {
  const LocaliZation({super.key});

  @override
  State<LocaliZation> createState() => _LocaliZationState();
}

class _LocaliZationState extends State<LocaliZation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: const Text("English")),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('hi', 'IN'));
                  },
                  child: const Text("Hindi"))
            ],
          )
        ],
      ),
    );
  }
}
