import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/first_page_controller.dart';
import './second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  // Get.put() => selalu menginisialisasi di awal
  final firstPageC = Get.put(FirstPageController());

  // Get.lazyPut() => menginisialisasi ketika ada yang membutuhkan/Get.find()
  // final firstPageC = Get.lazyPut(() => FirstPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${firstPageC.data["name"]} - ${firstPageC.data["country"]}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: const Text("Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}
