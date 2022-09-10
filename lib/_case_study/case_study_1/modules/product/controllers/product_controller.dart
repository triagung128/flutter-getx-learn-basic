import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Sendal",
      "price": 10000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Sepatu",
      "price": 100000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Baju",
      "price": 50000,
    },
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add(
        {
          "id": DateTime.now().toIso8601String(),
          "name": name,
          "price": int.parse(price),
        },
      );
      Get.back();
    }
  }
}
