import 'package:get/get.dart';

// Contoh penggunaan reactive state manager
class ReactiveController extends GetxController {
  // variabel ini dipantau setiap ada perubahan
  var counter = 0.obs;

  void increment() => counter++;
}
