import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(
            //   () => CounterPage(),
            //   binding: BindingsBuilder.put(() => CounterController()),
            // );
            Get.toNamed("/counter");
          },
          child: const Text("To Counter Page >"),
        ),
      ),
    );
  }
}
