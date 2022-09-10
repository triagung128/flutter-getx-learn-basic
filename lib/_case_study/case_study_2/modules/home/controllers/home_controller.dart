import 'package:get/get.dart';

import '../../../data/providers/user_provider.dart';
import '../../../data/models/user_model.dart';

class HomeController extends GetxController {
  UserProvider userProv = UserProvider();

  Future<List<User>> getAllUsers() async {
    return await userProv.getAllUsers();
  }
}
