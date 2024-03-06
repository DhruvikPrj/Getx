import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruits = [
    "Apple",
    "Banana",
    "Orange",
    "Grapes",
    "Strawberry",
    "Watermelon",
    "Mango",
    "Pineapple",
    "Kiwi",
    "Peach",
    "Plum",
    "Cherry",
    "Blueberry",
    "Raspberry",
    "Blackberry",
    "Pear",
    "Pomegranate",
    "Apricot",
    "Cantaloupe",
    "Honeydew",
    "Lemon",
    "Lime",
    "Coconut",
    "Papaya",
    "Avocado",
    "Guava",
    "Passion Fruit",
    "Dragon Fruit",
    "Fig",
    "Cranberry",
    "Gooseberry",
  ].obs;

  RxList fav = [].obs;

  addToFavourite(String value) {
    fav.add(value);
  }

  removeList(String value) {
    fav.remove(value);
  }
}
