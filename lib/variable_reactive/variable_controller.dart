import 'package:get/get.dart';

class VariableController extends GetxController {
  // Reactive Int
  RxInt dataInt = 0.obs;
  void increment() => dataInt++;
  void decrement() => dataInt--;

  // Reactive String
  RxString dataString = "data".obs;
  void updateDataString() => dataString.value = "data (update)";
  void resetDataString() => dataString.value = "data";

  // Reactive Double
  RxDouble dataDouble = 0.0.obs;
  void incrementDataDouble() => dataDouble.value++;
  void decrementDataDouble() => dataDouble.value--;

  // Reactive Boolean
  RxBool dataBoolean = false.obs;
  void updateDataBoolean() {
    // .isTrue => (data == true)
    // if (dataBoolean.isTrue) {
    //   dataBoolean.value = false;
    // } else {
    //   dataBoolean.value = true;
    // }

    // .toggle() => dataBoolean.value = !dataBoolean.value
    dataBoolean.toggle();
  }

  // Reactive List
  RxList<int> dataList = [1, 2, 3].obs;
  void addDataList() => (dataList.isEmpty)
      ? dataList.add(1)
      : dataList.add(dataList[dataList.length - 1] + 1);
  void substractDataList() =>
      (dataList.isNotEmpty) ? dataList.removeLast() : "";

  // Reactive Set
  RxSet<int> dataSet = {1, 2, 3}.obs;
  void addDataSet() => (dataSet.isEmpty)
      ? dataSet.add(1)
      : dataSet.add(dataSet.elementAt(dataSet.length - 1) + 1);
  void substractDataSet() => (dataSet.isNotEmpty)
      ? dataSet.remove(dataSet.elementAt(dataSet.length - 1))
      : "";

  // Reactive Map
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "name": "Cat",
    "type": "Mammal",
  }.obs;
  void updateDataMap() {
    dataMap["name"] = "Snake";
    dataMap["type"] = "Reptile";
  }
}
