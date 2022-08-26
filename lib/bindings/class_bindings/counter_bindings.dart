import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
