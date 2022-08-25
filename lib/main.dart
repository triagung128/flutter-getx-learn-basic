import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/bottom_sheet_getx/bottom_sheet_getx.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomSheetGetX(),
    );
  }
}
