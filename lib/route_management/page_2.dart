import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import './page_3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 2",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.off() => Untuk pergi ke halaman baru dan mencegah user
                // kembali ke halaman sebelumnya (biasanya digunakan untuk
                // SplashScreen, LoginScreen, dsb).
                // Get.off(const Page3());

                Get.offNamed("/page-3");
              },
              child: const Text("Next >"),
            ),
            // const Text("Get.off(Page3)"),
            const Text("Get.offNamed(\"/page-3\")"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.back() == Navigator.of(context).pop()
                // Get.back() => Untuk menutup snackbar, dialog, bottomsheet,
                // atau apapun yang normalnya anda tutup menggunakan
                // Navigator.pop(context).
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
