import 'package:get/get.dart';

class CountController extends GetxController {
  //Use Rx with datatype and .obs with its value.
  RxInt count = 0.obs; //observable value

  incrementCount() {
    count.value++;
    print(count.value);
  }
}
