import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import './page_1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 4",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.offAll() => Untuk pergi ke halaman baru dan batalkan
                // navigasi sebelumnya (berguna untuk shopping cart, polls,
                // dan test).
                // Get.offAll(const Page1());

                Get.offAllNamed("/page-1");
              },
              child: const Text("< Back to page 1"),
            ),
            // const Text("Get.offAll(Page1)"),
            const Text("Get.offAllNamed(\"/page-1\")"),
          ],
        ),
      ),
    );
  }
}
