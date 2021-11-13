import 'package:get/get.dart';
import 'package:hellogetx/data/models/user_model.dart';
import 'package:hellogetx/data/providers/user_provider.dart';
import 'package:hellogetx/pages/05-pasar-datos/profile_page.dart';

class UserController extends GetxController {
  final _userProvider = UserProvider();
  List<UserModel> users = [];

  @override
  void onInit() {
    _loadUsers();
    super.onInit();
  }

  _loadUsers() async {
    try {
      users = await _userProvider.getAllUsers(page: 1);
      update(["users"]);
    } catch (e) {
      print(e.toString());
    }
  }

  goToProfile({required UserModel user}) {
    Get.to(() => const ProfilePage(), arguments: user);
  }
}
