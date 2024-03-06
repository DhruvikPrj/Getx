import 'package:get/get.dart';

class ToggleController extends GetxController {
  RxBool isOn = false.obs;

  changeNotification(bool value) {
    isOn.value = value;
  }
}
