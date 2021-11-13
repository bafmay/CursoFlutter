import 'package:get/get.dart';
import 'package:hellogetx/data/models/user_model.dart';
import 'package:hellogetx/data/providers/user_provider.dart';

class ReactiveController extends GetxController {
  RxInt counter = RxInt(0);
  final _userProvider = UserProvider();
  // List<UserModel> users = [];
  RxList<UserModel> users = RxList([]);
  RxBool isLoading = RxBool(true);

  @override
  void onInit() {
    _loadUsers();
    super.onInit();
  }

  _loadUsers() async {
    try {
      users.value = await _userProvider.getAllUsers(page: 1);
      isLoading.value = false;
    } catch (e) {
      print(e.toString());
    }
  }

  onFavorite(int index) {
    users[index].isFavorite.value = !users[index].isFavorite.value;
    counter.value =
        users.where((item) => item.isFavorite.value == true).toList().length;
  }

  void increment() {
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }
}
