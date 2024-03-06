import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateManagement/getX_List/fav_Controller.dart';

class FavList extends StatefulWidget {
  const FavList({super.key});

  @override
  State<FavList> createState() => _FavListState();
}

class _FavListState extends State<FavList> {
  final FavouriteController favController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite List"),
      ),
      body: ListView.builder(
        itemCount: favController.fruits.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
              onTap: () {
                if (favController.fav
                    .contains(favController.fruits[index].toString())) {
                  favController
                      .removeList(favController.fruits[index].toString());
                } else {
                  favController
                      .addToFavourite(favController.fruits[index].toString());
                }
                // setState(() {});
              },
              leading: Text(index.toString()),
              title: Text(favController.fruits[index]),
              trailing: Obx(
                //Must Add to watch changes in output.
                () => Icon(
                  Icons.favorite,
                  color: favController.fav
                          .contains(favController.fruits[index].toString())
                      ? Colors.red[900]
                      : Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
