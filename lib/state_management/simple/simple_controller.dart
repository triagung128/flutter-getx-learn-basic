import 'package:get/get.dart';

// Contoh penggunaan simple state manager
class SimpleController extends GetxController {
  int counter = 0;

  void increment() => counter++;

  // fungsi update() untuk mentrigger perubahan tampilan
  void refreshTampilan() => update();
}
