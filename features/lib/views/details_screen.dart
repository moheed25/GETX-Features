import 'package:features/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DetailScreen extends StatelessWidget {
  

  MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    print(data);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details of food"),
      ),
      body: Column(children: [
         ElevatedButton(
            onPressed: () {
              controller.showErrorDialog();
            },
            child: Text("Show Dialog"),
          ),
          ElevatedButton(
            onPressed: () {
              controller.showBottomSheet();
            },
            child: Text("Show Bottom Sheet"),
          ),
          ElevatedButton(
            onPressed: () {
              controller.showsnackbar();
            },
            child: Text("showsnackbar"),
          ),
      ],)
    );
  }
}
