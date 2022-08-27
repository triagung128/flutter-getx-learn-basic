import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import './get_storage/pages/home_page.dart';
import './get_storage/pages/login_page.dart';

// import './bindings/pages/home_page.dart';
// import './bindings/pages/counter_page.dart';
// import './bindings/class_bindings/counter_bindings.dart';

// import './route_management/page_1.dart';
// import './route_management/page_2.dart';
// import './route_management/page_3.dart';
// import './route_management/page_4.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // routes: {
      //   "page-1": (context) => const Page1(),
      //   "page-2": (context) => const Page2(),
      //   "page-3": (context) => const Page3(),
      //   "page-4": (context) => const Page4(),
      // },
      // === Materi Route Management ===
      // getPages: [
      //   GetPage(
      //     name: "/page-1",
      //     page: () => const Page1(),
      //   ),
      //   GetPage(
      //     name: "/page-2",
      //     page: () => const Page2(),
      //   ),
      //   GetPage(
      //     name: "/page-3",
      //     page: () => const Page3(),
      //   ),
      //   GetPage(
      //     name: "/page-4",
      //     page: () => const Page4(),
      //   ),
      // ],

      // === Materi Binding ===
      // getPages: [
      //   GetPage(
      //     name: "/counter",
      //     page: () => CounterPage(),
      //     // binding: BindingsBuilder.put(() => CounterController()),
      //     binding: CounterBindings(),
      //   ),
      // ],

      // === Materi GetStorage ===
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/login",
          page: () => LoginPage(),
        ),
      ],
    );
  }
}
