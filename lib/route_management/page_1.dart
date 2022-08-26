import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import './page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 1",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to() == Navigator.of(context).push(route)
                // Go.to() => Pindah ke halaman baru
                // Get.to(const Page2());

                // Contoh penggunaan getPages
                Get.toNamed("/page-2");
              },
              child: const Text("Next >"),
            ),
            // const Text("Get.to(Page2)"),
            const Text("Get.toNamed(\"/page-2\")"),
          ],
        ),
      ),
    );
  }
}
