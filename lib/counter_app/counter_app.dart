import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './counter_controller.dart';

class CounterApp extends StatelessWidget {
  CounterApp({Key? key}) : super(key: key);

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App With Getx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${counterController.count}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterController.increment();
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
