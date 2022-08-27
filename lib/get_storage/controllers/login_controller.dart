import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() {
    if (emailC.text == "admin@mail.com" && passC.text == "admin") {
      final box = GetStorage();
      if (box.read("dataRememberMe") != null) box.remove("dataRememberMe");
      if (rememberMe.isTrue) {
        box.write(
          "dataRememberMe",
          {
            "email": emailC.text,
            "password": passC.text,
          },
        );
      }
      Get.offNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Username dan Password yang Anda masukan Salah!",
      );
    }
  }

  void logout() {
    Get.offNamed("/login");
  }
}
