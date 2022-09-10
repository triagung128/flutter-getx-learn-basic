import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
import '../../../data/providers/user_provider.dart';

class DetailController extends GetxController {
  final UserProvider _userProv = UserProvider();

  Future<User?> getSingleUser(int id) async {
    return await _userProv.getUser(id);
  }
}
