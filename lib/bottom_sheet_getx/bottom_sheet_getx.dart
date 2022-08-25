import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetGetX extends StatelessWidget {
  const BottomSheetGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              backgroundColor: Colors.white,
              Wrap(
                children: const [
                  ListTile(
                    title: Text("Menu 1"),
                    leading: Icon(Icons.mark_email_unread),
                  ),
                  ListTile(
                    title: Text("Menu 2"),
                    leading: Icon(Icons.message),
                  ),
                  ListTile(
                    title: Text("Menu 3"),
                    leading: Icon(Icons.contact_phone),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Bottomsheet"),
        ),
      ),
    );
  }
}
