import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarGetX extends StatelessWidget {
  const SnackbarGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Snackbar default
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: const Text("Contoh Snackbar Default"),
            //     action: SnackBarAction(
            //       label: "Batal",
            //       onPressed: () {},
            //     ),
            //   ),
            // );

            // Snackbar GetX
            Get.snackbar(
              "Judul Snackbar",
              "Contoh Snackbar GetX",
              snackPosition: SnackPosition.BOTTOM,
              dismissDirection: DismissDirection.horizontal,
            );
          },
          child: const Text("Show Snackbar"),
        ),
      ),
    );
  }
}
