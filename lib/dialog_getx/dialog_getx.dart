import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGetX extends StatelessWidget {
  const DialogGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // use defaultDialog()
            // Get.defaultDialog(
            //   title: "Judul",
            //   content: const Text("Ini adalah bagian dari konten"),
            //   textConfirm: "Iya",
            //   textCancel: "Batal",
            // );

            // use dialog()
            Get.dialog(
              AlertDialog(
                title: const Text("Judul"),
                content: const Text("Ini adalah bagian dari konten"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tidak"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Iya"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
