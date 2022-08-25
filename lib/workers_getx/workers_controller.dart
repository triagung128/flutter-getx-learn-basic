import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataObs = 0.obs;

  void change() => dataObs++;

  @override
  void onInit() {
    // eve() => memantau setiap ada perubahan
    // ever(dataObs, (data) => debugPrint("perubahan"));

    // once() => hanya memantau 1x atau memantau perubahan awal/pertama kali
    // once(dataObs, (data) => debugPrint("hanya 1x pantau"));

    // debounce() => mengeksekusi sesuai durasi yang ditentukan setelah
    // berhenti memantau
    // debounce(
    //   dataObs,
    //   (data) => debugPrint("dieksekusi 2 detik setelah berhenti memantau"),
    //   time: const Duration(seconds: 2),
    // );

    // interval() => memantau setiap durasi yang ditentukan
    interval(
      dataObs,
      (data) => debugPrint("dieksekusi 2 detik"),
      time: const Duration(seconds: 2),
    );

    super.onInit();
  }
}
