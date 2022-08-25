import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './variable_controller.dart';

class VariableReactive extends StatelessWidget {
  VariableReactive({Key? key}) : super(key: key);

  final variableC = Get.put(VariableController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Variable Reactive"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${variableC.dataInt}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      variableC.decrement();
                    },
                    child: const Text("-"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      variableC.increment();
                    },
                    child: const Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${variableC.dataString}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      variableC.updateDataString();
                    },
                    child: const Text("Update"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      variableC.resetDataString();
                    },
                    child: const Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${variableC.dataDouble}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      variableC.decrementDataDouble();
                    },
                    child: const Text("-"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      variableC.incrementDataDouble();
                    },
                    child: const Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${variableC.dataBoolean}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  variableC.updateDataBoolean();
                },
                child: Obx(
                  () => Text("${!(variableC.dataBoolean.value)}"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Obx(
                  () => Text(
                    "${variableC.dataList}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      variableC.substractDataList();
                    },
                    child: const Text("Substract"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      variableC.addDataList();
                    },
                    child: const Text("Add"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Obx(
                  () => Text(
                    "${variableC.dataSet}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      variableC.substractDataSet();
                    },
                    child: const Text("Substract"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      variableC.addDataSet();
                    },
                    child: const Text("Add"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        "Name: ${variableC.dataMap["name"]}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Obx(
                      () => Text(
                        "Type: ${variableC.dataMap["type"]}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  variableC.updateDataMap();
                },
                child: const Text("Update"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
