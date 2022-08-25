import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './reactive_controller.dart';

class Reactive extends StatelessWidget {
  Reactive({Key? key}) : super(key: key);

  final reactiveC = Get.put(ReactiveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reactive State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hanya widget di dalam Obx() yang hanya mengalami
            // perubahan tampilan (di render setiap kali ada trigger)
            Obx(
              () => Text(
                "${reactiveC.counter}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                reactiveC.increment();
              },
              child: const Text("+ Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}
