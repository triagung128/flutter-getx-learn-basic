import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './workers_controller.dart';

class WorkersGetX extends StatelessWidget {
  WorkersGetX({Key? key}) : super(key: key);

  final workersC = Get.put(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workers GetX"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi perubahan : ${workersC.dataObs} x",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => workersC.change(),
                decoration: const InputDecoration(
                  labelText: "Data",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
