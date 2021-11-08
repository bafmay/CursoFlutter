import 'package:get/get.dart';
import 'package:hellogetx/data/models/user_model.dart';
import 'package:hellogetx/data/providers/user_provider.dart';

class UserController extends GetxController {
  final _userProvider = UserProvider();
  List<UserModel> users = [];

  @override
  void onInit() {
    _loadUsers();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadUsers() async {
    try {
      users = await _userProvider.getAllUsers(page: 1);
      update(["users"]);
    } catch (e) {
      print(e.toString());
    }
  }
}
