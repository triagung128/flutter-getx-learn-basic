import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './simple_controller.dart';

class Simple extends StatelessWidget {
  Simple({Key? key}) : super(key: key);

  final reactiveC = Get.put(SimpleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget yang ada di dalam GetBuilder() akan di render
            // ketika button "Refresh Tampilan" di kllik
            GetBuilder<SimpleController>(
              builder: (controller) => Text(
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
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                // Akan merender widget yang ada di dalam GetBuilder()
                reactiveC.refreshTampilan();
              },
              child: const Text("Refresh Tampilan"),
            ),
          ],
        ),
      ),
    );
  }
}
