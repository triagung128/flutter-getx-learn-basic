import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './snackbar_getx/snackbar_getx.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackbarGetX(),
    );
  }
}
