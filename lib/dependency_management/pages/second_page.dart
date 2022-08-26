import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/first_page_controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  // Get.find() => mencari dependency
  final FirstPageController firstPageC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Text(
          "${firstPageC.data["name"]} - ${firstPageC.data["country"]}",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
