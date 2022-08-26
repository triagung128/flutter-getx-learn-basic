import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import './page_4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 3",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(const Page4());
                Get.toNamed("/page-4");
              },
              child: const Text("Next >"),
            ),
            // const Text("Get.to(Page4)"),
            const Text("Get.toNamed(\"/page-4\")"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("< Back"),
            ),
            const Text("Get.back()"),
          ],
        ),
      ),
    );
  }
}
