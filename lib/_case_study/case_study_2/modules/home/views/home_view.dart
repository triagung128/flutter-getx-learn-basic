import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../../data/models/user_model.dart';
import '../../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<User>>(
        future: controller.getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text("Tidak ada data user."),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                User user = snapshot.data![index];
                return ListTile(
                  onTap: () => Get.toNamed(
                    Routes.detail,
                    arguments: user.id,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar!),
                    backgroundColor: Colors.grey[300],
                  ),
                  title: Text("${user.firstName} ${user.lastName}"),
                  subtitle: Text("${user.email}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
