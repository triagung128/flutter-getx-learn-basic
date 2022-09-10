import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../product/controllers/product_controller.dart';
import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  AddProductView({Key? key}) : super(key: key);

  final ProductController _productC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProductView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: const InputDecoration(
              labelText: "Product Name",
            ),
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Price",
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _productC.addProduct(
              controller.nameC.text,
              controller.priceC.text,
            ),
            child: const Text("ADD PRODUCT"),
          ),
        ],
      ),
    );
  }
}
